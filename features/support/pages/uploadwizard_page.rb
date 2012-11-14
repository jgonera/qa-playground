class UploadWizardPage
  include PageObject

  def self.url
    if ENV['BASE_URL']
      base_url = ENV['BASE_URL']
    else
      base_url = "test2"
    end

    config = YAML.load_file('config/config.yml')
    "#{config['base_url'][base_url]}Special:UploadWizard"
  end
  page_url url

  link(:logged_in, :link_text => 'logged in')
  div(:tutorial_map, :id => 'mwe-upwiz-tutorial')
  checkbox(:skip_radio, :id => 'mwe-upwiz-skip')
  span(:next, text: 'Next')
  file_field(:select_file, :name => 'file')
  #button(:continue_button, :class => 'mwe-upwiz-button-next ui-button ui-widget ui-state-default ui-corner-all ui-button-text-only')
  button(:continue_button, :xpath => '//div[2]/div[2]/div/button')
  radio_button(:own_work_button, :id => 'deedChooser1-ownwork')
  radio_button(:third_party_button, :id => 'deedChooser1-thirdparty')
  #check links actually go the right place https://bugzilla.wikimedia.org/show_bug.cgi?id=35702
  link(:legal_code_recommended, :href => 'https://creativecommons.org/licenses/by-sa/3.0/')
  link(:legal_code_cc_sa3, :href => 'https://creativecommons.org/licenses/by-sa/3.0/')
  link(:legal_code_cca3, :href => 'https://creativecommons.org/licenses/by/3.0/')
  link(:legal_code_cc_waiver, :href => 'https://creativecommons.org/publicdomain/zero/1.0/')
  link(:legal_code_cc_sa25, :href => 'https://creativecommons.org/licenses/by-sa/2.5/')
  link(:legal_code_cca25, :href => 'https://creativecommons.org/licenses/by/2.5/')
  text_field(:author, :name => 'author2')
  link(:different_license, :link_text => 'Use a different license')
  radio_button(:cca_sa, :id => 'license1_0')
  radio_button(:cca3, :id => 'license1_1')
  radio_button(:cc_cc, :id => 'license1_2')
  link(:recommended_license, :link_text => 'Use the recommended license')
  text_area(:source, :name => 'source')
  text_area(:author, :name => 'author')
  link(:cc, :link_text => 'The copyright holder published this work with the right Creative Commons license')
  link(:flickr, :link_text => 'The copyright holder published their photo or video on Flickr with the right license')
  link(:expired, :link_text => 'The copyright has definitely expired in the USA')
  link(:us_govt, :link_text => 'This work was made by the United States government')
  link(:not_mentioned, :link_text => 'Another reason not mentioned above')
  link(:found_it, :link_text => "I found it on the Internet -- I'm not sure")
  radio_button(:believe_free, :id => 'license2_13')
  radio_button(:cca_sa3, :id => 'license2_0')
  radio_button(:cca_sa2, :id => 'license2_1')
  radio_button(:cca3_2, :id => 'license2_2')
  radio_button(:cca2, :id => 'license2_3')
  radio_button(:cc_waiver, :id => 'license2_4')
  radio_button(:cca_sa20, :id => 'license2_5')
  radio_button(:cca_2_2, :id => 'license2_6')
  radio_button(:us_govt_2, :id => 'license2_7')
  radio_button(:pre_1923, :id => 'license2_8')
  radio_button(:repro, :id => 'license2_9')
  radio_button(:us_govt_3, :id => 'license2_10')
  radio_button(:nasa, :id => 'license2_11')
  radio_button(:free_form, :id => 'license2_12')
  text_area(:free_lic, :id => 'license2_12_custom')
  button(:next_button, :xpath => '//div[4]/button')
  text_field(:title_field, :id => 'title0')
  text_area(:description_field, :name => 'description1')
  text_field(:date_created, :id => 'dateInput0')
  select_list(:language, :name => 'lang')
  link(:categories, :link_text => 'Add categories and more information ...')
  text_field(:add_categories, :id => 'categories0')
  text_field(:latitude, :id => 'location-latitude0')
  text_field(:longitude, :id => 'location-longitude0')
  text_field(:altitude, :id => 'location-altitude0')
  text_area(:other_information, :id => 'otherInformation0')
end
