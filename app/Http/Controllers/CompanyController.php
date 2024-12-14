<?php

namespace App\Http\Controllers;

use App\Models\Company;
use Illuminate\Http\Request;

class CompanyController extends Controller
{
    public function getCompanyDetails($companyId)
    {
        // Retrieve the company with its related data using eager loading
        $company = Company::with(['companyPhones', 'companySocials', 'companyOwners'])->find($companyId);

        // Check if the company exists
        if (!$company) {
            return response()->json(['message' => 'Company not found'], 404);
        }

        // Gather all required details
        $details = [
            'phone_numbers' => $company->companyPhones->pluck('phone_number'), // Extract only phone numbers
            'email' => $company->company_email, // Directly from the company table
            'location' => $company->company_adress, // Location column from the company table
            'social_media' => $company->companySocials->map(function ($social) {
                return [
                    'type' => $social->social_type,
                    'link' => $social->social_link,
                ];
            }),
            'owners' => $company->companyOwners->map(function ($owner) {
                return [
                    'name' => $owner->owner_name,
                    'email' => $owner->owner_email,
                    'phone' => $owner->owner_phone,
                ];
            }),
        ];

        // Return the details as JSON
        return response()->json($details);
    }
    
    // Add company location
    public function addCompanyDetails(Request $request)
    {
        // Validate the incoming request data
        $validatedData = $request->validate([
            'company_name' => 'required|string|max:255',
            'company_email' => 'required|email|unique:companies,company_email|max:255', // Validate email
            'phone_numbers' => 'required|array',
            'phone_numbers.*' => 'required|string', // Validate phone numbers as an array of strings
            'location' => 'required|string',
            'social_media' => 'required|array',
            'social_media.*.social_type' => 'required|string',
            'social_media.*.social_link' => 'required|url',
            'owners' => 'required|array',
            'owners.*.owner_name' => 'required|string',
            'owners.*.owner_email' => 'required|email',
            'owners.*.owner_phone' => 'required|string',
        ]);
    
        // Create the company
        $company = Company::create([
            'company_name' => $validatedData['company_name'],
            'company_email' => $validatedData['company_email'],  // Include company_email
            'company_adress' => $validatedData['location'],     // Include location (company address)
        ]);
    
        // Add phone numbers
        foreach ($validatedData['phone_numbers'] as $phone_number) {
            $company->companyPhones()->create(['phone_number' => $phone_number]);
        }
    
        // Add social media links
        foreach ($validatedData['social_media'] as $social_media) {
            $company->companySocials()->create([
                'social_type' => $social_media['social_type'],
                'social_link' => $social_media['social_link']
            ]);
        }
    
        // Add owners
        foreach ($validatedData['owners'] as $owner) {
            $company->companyOwners()->create([
                'owner_name' => $owner['owner_name'],
                'owner_email' => $owner['owner_email'],
                'owner_phone' => $owner['owner_phone'],
            ]);
        }
    
        // Return a success response
        return response()->json(['message' => 'Company details added successfully!'], 201);
    }
    public function deleteCompany($id)
{
    // Find the company by ID
    $company = Company::findOrFail($id);
    
    // Delete related phone numbers, social media, and owners
    $company->companyPhones()->delete();
    $company->companySocials()->delete();
    $company->companyOwners()->delete();
    
    // Finally, delete the company record itself
    $company->delete();
    
    // Return a success response
    return response()->json(['message' => 'Company and its details deleted successfully!'], 200);
}

}    