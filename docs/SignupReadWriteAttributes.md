# NationbuilderClient::SignupReadWriteAttributes

## Properties

| Name | Type | Description | Notes |
| ---- | ---- | ----------- | ----- |
| **born_at** | **String** | The date the signup was born. | [optional] |
| **city_district** | **String** | The city district code the signup belongs to. | [optional] |
| **civicrm_id** | **String** | The ID of the CiviCRM account the signup is associated with. | [optional] |
| **county_district** | **String** | The county district the signup belongs to. | [optional] |
| **county_file_id** | **String** | The ID of the county voter file belonging to the signup. | [optional] |
| **datatrust_id** | **String** | The ID of the associated Datatrust account. | [optional] |
| **do_not_call** | **Boolean** | Signup has asked not to be contacted via phone call. | [optional][default to false] |
| **do_not_contact** | **Boolean** | Signup has asked not to be contacted. | [optional][default to false] |
| **dw_id** | **String** | The Catalist ID associated with the signup. | [optional] |
| **email** | **String** | The signup&#39;s email address. | [optional] |
| **email_opt_in** | **Boolean** | The signup has opted in to receive emails. | [optional][default to true] |
| **employer** | **String** | The signup&#39;s employer. | [optional] |
| **external_id** | **String** | A unique identifier from a third party. | [optional] |
| **federal_district** | **String** | Federal voting district the signup belongs to. | [optional] |
| **fire_district** | **String** | Political district only available in a voter file import. | [optional] |
| **first_name** | **String** | Signup&#39;s first name. | [optional] |
| **is_volunteer** | **Boolean** | The signup is a volunteer in your nation. | [optional][default to false] |
| **judicial_district** | **String** | Political district only available in a voter file import. | [optional] |
| **labour_region** | **String** | British voting district. | [optional] |
| **last_name** | **String** | The signup&#39;s last name. | [optional] |
| **mobile_number** | **String** | The signup&#39;s cell phone number. | [optional] |
| **mobile_opt_in** | **Boolean** | The signup has opted in to mobile phone contact. | [optional][default to true] |
| **middle_name** | **String** | Signup&#39;s middle name. | [optional] |
| **ngp_id** | **String** | ID from associated NGP account. | [optional] |
| **note** | **String** | Important information to remember about the signup. | [optional] |
| **occupation** | **String** | The signup&#39;s occupation. | [optional] |
| **party** | **String** | Single letter abbreviation for political party. | [optional] |
| **pf_strat_id** | **String** | PoliticalFORCE ID. | [optional] |
| **phone_number** | **String** | Signup&#39;s phone number. | [optional] |
| **precinct_id** | **String** | Voting precinct the signup belongs to. | [optional] |
| **recruiter_id** | **String** | ID of the signup&#39;s recruiter (also a signup). | [optional] |
| **rnc_id** | **String** | RNC ID. | [optional] |
| **rnc_regid** | **String** | RNC registration ID. | [optional] |
| **salesforce_id** | **String** | ID of the associated Salesforce account. | [optional] |
| **school_district** | **String** | School district the signup belongs to. | [optional] |
| **school_sub_district** | **String** | School sub-district the signup belongs to. | [optional] |
| **sex** | **String** | Must be a single letter: M, F, or O (male, female, or other). | [optional] |
| **signup_type** | **Integer** | Indicates whether the record represents a person or an organization. Must be a single digit: 0 or 1 (0&#x3D;person, 1&#x3D;organization). | [optional][default to 0] |
| **state_file_id** | **String** | Unique identifier if mapped with the registered state field. May be zero filled to number of digits defined by state. | [optional] |
| **state_lower_district** | **String** | Voting district. | [optional] |
| **state_upper_district** | **String** | Voting district. | [optional] |
| **support_level** | **Integer** | A number from 1-5. 1&#x3D;very strong support and 5&#x3D;very strong opposition. | [optional] |
| **supranational_district** | **String** | Voting district. | [optional] |
| **van_id** | **String** | ID of the associated VAN account. | [optional] |
| **village_district** | **String** | Political district only available in a voter file import. | [optional] |
| **ward** | **String** | Political district only available in a voter file import. | [optional] |
| **work_phone_number** | **String** | Signup&#39;s work phone number. | [optional] |
| **author_id** | **String** | ID of the person interacting with the signup in the control panel. | [optional] |
| **availability** | **String** | When can this signup be contacted? | [optional] |
| **banned_at** | **String** | When the signup was banned. | [optional] |
| **capital_amount_in_cents** | **Integer** | The amount of political capital this signup has accrued | [optional][default to 0] |
| **church** | **String** | The name of the church the signup belongs to. | [optional] |
| **city_sub_district** | **String** | Political district. | [optional] |
| **contact_status** | **String** | Name of the associated contact status. | [optional] |
| **could_vote_status** | **Integer** | Integer representing if the signup can vote. 1&#x3D;can vote, -1&#x3D;can&#39;t vote. | [optional] |
| **demo** | **String** | Single letter representation of demographic. | [optional] |
| **donations_amount_in_cents** | **Integer** | Sum of donations made by the signup. | [optional][default to 0] |
| **donations_amount_this_cycle_in_cents** | **Integer** | Sum of donations made by the signup in the current cycle. | [optional][default to 0] |
| **donations_count** | **Integer** | Number of donations made by the signup. | [optional][default to 0] |
| **donations_count_this_cycle** | **Integer** | Number of donations made by the signup in the current cycle. | [optional][default to 0] |
| **donations_pledged_amount_in_cents** | **Integer** | Sum of pledges made by the signup. | [optional][default to 0] |
| **donations_raised_amount_in_cents** | **Integer** | Sum of donations raised by the signup. | [optional][default to 0] |
| **donations_raised_amount_this_cycle_in_cents** | **Integer** | Sum of donations raised by the signup in the current cycle. | [optional][default to 0] |
| **donations_raised_count** | **Integer** | Number of donations raised by this signup. | [optional][default to 0] |
| **donations_raised_count_this_cycle** | **Integer** | Number of donations raised by this signup in the current cycle. | [optional][default to 0] |
| **donations_to_raise_amount_in_cents** | **Integer** | Sum of donations that need to be raised. | [optional][default to 0] |
| **email1** | **String** | Email address for the signup. | [optional] |
| **email1_is_bad** | **Boolean** | The address is not emailable. | [optional][default to false] |
| **email2** | **String** | Email address for the signup. | [optional] |
| **email2_is_bad** | **Boolean** | The address is not emailable. | [optional][default to false] |
| **email3** | **String** | Email address for the signup. | [optional] |
| **email3_is_bad** | **Boolean** | The address is not emailable. | [optional][default to false] |
| **email4** | **String** | Email address for the signup. | [optional] |
| **email4_is_bad** | **Boolean** | The address is not emailable. | [optional][default to false] |
| **ethnicity** | **String** | Signup&#39;s ethnicity. | [optional] |
| **fax_number** | **String** | Signup&#39;s fax number. | [optional] |
| **federal_donotcall** | **Boolean** | Is the signup on the federal do not call list? | [optional][default to false] |
| **first_donated_at** | **String** | The first time the signup made a donation. | [optional] |
| **first_fundraised_at** | **String** | The first time the signup fundraised. | [optional] |
| **first_prospect_at** | **String** | The first time the signup was marked as a prospect. | [optional] |
| **first_recruited_at** | **String** | The first time the signup recruited another signup. | [optional] |
| **first_supporter_at** | **String** | The first time the signup was marked as a supporter. | [optional] |
| **first_volunteer_at** | **String** | The first time the signup volunteered. | [optional] |
| **import_id** | **String** | The id of the import that added the signup. | [optional] |
| **inferred_party** | **String** | Single letter representation of the signup&#39;s inferred political party. | [optional] |
| **inferred_support_level** | **Integer** | The signup&#39;s inferred support level. 1&#x3D;very strong support and 5&#x3D;very strong opposition. | [optional] |
| **is_deceased** | **Boolean** | The signup is deceased. | [optional][default to false] |
| **is_fundraiser** | **Boolean** | The signup is a fundraiser. | [optional][default to false] |
| **is_ignore_donation_limits** | **Boolean** | Ignore donation limits for this signup. | [optional][default to false] |
| **is_leaderboardable** | **Boolean** | The signup can appear on leaderboards. | [optional][default to true] |
| **is_mobile_bad** | **Boolean** | The signup&#39;s mobile number is bad. | [optional][default to false] |
| **is_possible_duplicate** | **Boolean** | The signup could be a duplicate. | [optional][default to false] |
| **is_profile_private** | **Boolean** | The signup&#39;s profile is private. | [optional][default to false] |
| **is_profile_searchable** | **Boolean** | The profile is searchable. | [optional][default to true] |
| **is_prospect** | **Boolean** | The signup is a prospect. | [optional][default to false] |
| **is_supporter** | **Boolean** | The signup is a supporter. | [optional][default to true] |
| **is_survey_question_private** | **Boolean** | Survey questions are private for this signup. | [optional][default to false] |
| **language** | **String** | The primary language of the signup. | [optional] |
| **last_call_id** | **String** | ID of the last call made to the signup. | [optional] |
| **last_contacted_at** | **String** | The last time the signup was contacted. | [optional] |
| **last_contacted_by_id** | **String** | The ID of the user that last contacted the signup. | [optional] |
| **last_donated_at** | **String** | The last time the signup donated. | [optional] |
| **last_fundraised_at** | **String** | The last time the signup fundraised. | [optional] |
| **last_rule_violation_at** | **String** | The last time the signup violated a rule. | [optional] |
| **legal_name** | **String** | The signup&#39;s legal name. | [optional] |
| **locale** | **String** | Letter code representing the signup\\s language. | [optional] |
| **marital_status** | **String** | Single letter representation of the signup&#39;s marital status. | [optional] |
| **parent_id** | **String** | Signup&#39;s parent ID. | [optional] |
| **party_member** | **Boolean** | Political party membership. | [optional] |
| **phone_time** | **String** | Best time to contact the signup. | [optional] |
| **prefix** | **String** | Signup&#39;s prefix. | [optional] |
| **previous_party** | **String** | Single letter representing the signup&#39;s previous political party affiliation. | [optional] |
| **primary_email_id** | **Integer** | The email column containing the primary email of the signup. | [optional][default to PRIMARY_EMAIL_ID::N1] |
| **priority_level** | **Integer** | Priority level of the signup. | [optional] |
| **profile_content** | **String** | The contents of the signup&#39;s profile. | [optional] |
| **profile_headline** | **String** | Headline of the signup&#39;s profile. | [optional] |
| **received_capital_amount_in_cents** | **Integer** | Amount of social capital received. | [optional][default to 0] |
| **registered_at** | **String** | When was the signup registered. | [optional] |
| **religion** | **String** | Signup&#39;s religion. | [optional] |
| **rule_violations_count** | **Integer** | Number of rules the signup has violated. | [optional][default to 0] |
| **spent_capital_amount_in_cents** | **Integer** | Amount of social capital spent. | [optional][default to 0] |
| **submitted_address** | **String** | The address submitted by the signup. | [optional] |
| **suffix** | **String** | Signup&#39;s suffix. | [optional] |
| **township** | **String** | Political district only available in a voter file import. | [optional] |
| **unsubscribed_at** | **String** | When the signup unsubscribed. | [optional] |
| **username** | **String** | Signup&#39;s username. | [optional] |
| **warnings_count** | **Integer** | Number of warnings given to the signup. | [optional][default to 0] |
| **custom_values** | **Object** | Values for nation-defined fields on signup | [optional] |

## Example

```ruby
require 'nationbuilder_client'

instance = NationbuilderClient::SignupReadWriteAttributes.new(
  born_at: 1990-08-06,
  city_district: Trinity-Spadina (19),
  civicrm_id: 1,
  county_district: City of Portsmouth (B),
  county_file_id: 1,
  datatrust_id: 1,
  do_not_call: false,
  do_not_contact: false,
  dw_id: 1,
  email: test@example.com,
  email_opt_in: false,
  employer: NationBuilder,
  external_id: 1,
  federal_district: Congressional District 40,
  fire_district: Jackson,
  first_name: Lucy,
  is_volunteer: false,
  judicial_district: 1,
  labour_region: 1,
  last_name: Butler,
  mobile_number: 1234567890,
  mobile_opt_in: false,
  middle_name: Octavia,
  ngp_id: 1,
  note: Good talk,
  occupation: Software engineer,
  party: P,
  pf_strat_id: 1,
  phone_number: 1234567890,
  precinct_id: 1,
  recruiter_id: 1,
  rnc_id: 1,
  rnc_regid: 1,
  salesforce_id: 1,
  school_district: 1,
  school_sub_district: 1,
  sex: F,
  signup_type: 1,
  state_file_id: 1,
  state_lower_district: Assembly District 35,
  state_upper_district: State Senate District 19,
  support_level: 1,
  supranational_district: London Euro Region,
  van_id: 1,
  village_district: 1,
  ward: 1,
  work_phone_number: 1234567890,
  author_id: 1,
  availability: Saturday morning,
  banned_at: 2019-10-26T10:00:00-04:00,
  capital_amount_in_cents: 500,
  church: Unity Church,
  city_sub_district: DOWNTOWN LOS ANGELES,
  contact_status: answered,
  could_vote_status: 1,
  demo: H,
  donations_amount_in_cents: 500,
  donations_amount_this_cycle_in_cents: 500,
  donations_count: 5,
  donations_count_this_cycle: 5,
  donations_pledged_amount_in_cents: 500,
  donations_raised_amount_in_cents: 500,
  donations_raised_amount_this_cycle_in_cents: 500,
  donations_raised_count: 5,
  donations_raised_count_this_cycle: 5,
  donations_to_raise_amount_in_cents: 500,
  email1: example@example.com,
  email1_is_bad: false,
  email2: example@example.com,
  email2_is_bad: false,
  email3: example@example.com,
  email3_is_bad: false,
  email4: example@example.com,
  email4_is_bad: false,
  ethnicity: Hawaiian,
  fax_number: 1234567890,
  federal_donotcall: false,
  first_donated_at: 2019-10-26T10:00:00-04:00,
  first_fundraised_at: 2019-10-26T10:00:00-04:00,
  first_prospect_at: 2019-10-26T10:00:00-04:00,
  first_recruited_at: 2019-10-26T10:00:00-04:00,
  first_supporter_at: 2019-10-26T10:00:00-04:00,
  first_volunteer_at: 2019-10-26T10:00:00-04:00,
  import_id: 1,
  inferred_party: P,
  inferred_support_level: 1,
  is_deceased: false,
  is_fundraiser: false,
  is_ignore_donation_limits: false,
  is_leaderboardable: false,
  is_mobile_bad: false,
  is_possible_duplicate: false,
  is_profile_private: false,
  is_profile_searchable: false,
  is_prospect: false,
  is_supporter: false,
  is_survey_question_private: false,
  language: EN,
  last_call_id: 1,
  last_contacted_at: 2019-10-26T10:00:00-04:00,
  last_contacted_by_id: 1,
  last_donated_at: 2019-10-26T10:00:00-04:00,
  last_fundraised_at: 2019-10-26T10:00:00-04:00,
  last_rule_violation_at: 2019-10-26T10:00:00-04:00,
  legal_name: Lucy Octavia Butler,
  locale: en,
  marital_status: S,
  parent_id: 1,
  party_member: false,
  phone_time: 7:00pm,
  prefix: Dr.,
  previous_party: D,
  primary_email_id: 1,
  priority_level: 1,
  profile_content: Profile content,
  profile_headline: My Profile,
  received_capital_amount_in_cents: 500,
  registered_at: 2022-06-01,
  religion: Internet,
  rule_violations_count: 5,
  spent_capital_amount_in_cents: 500,
  submitted_address: 123 Test Drive, Los Angeles, CA,
  suffix: Jr.,
  township: Van Buren,
  unsubscribed_at: 2019-10-26T10:00:00-04:00,
  username: username,
  warnings_count: 5,
  custom_values: {&quot;custom_text&quot;:&quot;Text Value&quot;,&quot;custom_number&quot;:&quot;22&quot;,&quot;custom_checkbox&quot;:true,&quot;custom_multi&quot;:&quot;Some multiple choice option&quot;}
)
```

