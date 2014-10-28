module Console::HelpHelper

  # Given a relative path within the user guide, display the topic
  def user_guide_topic_url(topic)
    locale = 'en-US'
    "http://access.redhat.com/knowledge/docs/#{locale}/OpenShift/2.0/html/User_Guide/#{topic}"
  end

  def user_guide_url
    user_guide_topic_url 'index.html'
  end

  def newsletter_signup_url
    'http://eepurl.com/yxiAr'
  end

  def feature_request_path
    community_base_url 'forums/21724148'
  end

  def forum_path
    community_base_url 'forums'
  end

  def getup_credit_url
    community_base_url 'entries/61852715'
  end

  def getup_community_path
    community_base_url 'forums/21724128'
  end

  def ssh_keys_help_path
    community_base_url 'entries/23649786'
  end

  def deploy_hook_user_guide_topic_url
    'http://openshift.github.io/documentation/oo_cartridge_developers_guide.html#application-developer-action-hooks'
    #community_base_url 'entries/23042806'
  end

  def add_domains_user_guide_topic_url
    user_guide_topic_url 'sect-OpenShift-User_Guide-Working_With_Namespaces.html'
  end

  def cartridge_list_url
    community_base_url 'developers/technologies'
  end

  def get_involved_url
    community_base_url 'get-involved'
  end

  def suggest_features_url
    community_base_url 'ideas'
  end

  def openshift_blog_url
    community_base_url 'blogs'
  end

  def opensource_community_url
    community_base_url 'open-source'
  end

  def get_involved_developers_url
    community_base_url 'developers/get-involved'
  end

  def partners_url
    community_base_url 'partners'
  end

  def get_started_quickstart_url
    community_base_url 'entries/38835698'
  end

  def developers_url
    community_base_url 'forums'
  end

  def developers_path
    community_base_url 'forums'
  end

  def ssh_help_url
    community_base_url 'entries/23074108'
  end

  def client_tools_install_help_url
    community_base_url 'entries/23056511'
  end

  def client_tools_help_url
    community_base_url 'developers/tools'
  end

  def developers_get_started_path
    community_base_url 'developers/get-started'
  end

  def livecd_wiki_url(anchor=nil)
    community_base_url "wiki/getting-started-with-openshift-origin-livecd#{anchor.present? ? "##{anchor}" : ''}"
  end

  def post_to_forum_url
    community_base_url 'forums/openshift'
  end

  def events_url
    community_base_url 'events'
  end

  def jenkins_help_url
    community_base_url 'entries/26199296'
  end

  def forums_url
    community_base_url 'forums'
  end

  def knowledge_base_url
    community_base_url 'kb'
  end

  def faq_url
   community_base_url 'forums/21706392'
  end

  def signup_faq_url
    community_base_url 'faq/i-just-signed-up-why-didnt-i-receive-an-email-confirmation'
  end

  def developers_get_started_fast_url
    community_base_url 'developers/get-started'
  end

  def community_search_url
    community_base_url 'search/node'
  end

  def sync_git_with_remote_repo_knowledge_base_url
    community_base_url 'entries/23649496'
  end

  def rails_quickstart_guide_url
    community_base_url 'kb/kb-e1005-ruby-on-rails-express-quickstart-guide'
  end

  def jboss_resources_url
    community_base_url 'developers/jboss'
  end

  def videos_url
    community_base_url 'videos'
  end

  def blog_post_url(post)
    community_base_url "blogs/#{post}"
  end

  def community_document_url(file)
    community_base_url "sites/default/files/documents/#{file}"
  end

  def mongodb_resources_url
    community_base_url 'developers/mongodb'
  end

  def scaling_help_url
    community_base_url 'entries/23026993'
  end

  def storage_help_url
    community_base_url 'entries/23852512'
  end

  def user_guide_url
    user_guide_topic_url 'index.html'
  end

  def getting_started_path(opts=nil)
    community_base_url "entries/38835698"
  end

  def product_overview_path(opts=nil)
    community_base_url "paas", opts
  end

  def opensource_process_url
    community_base_url "wiki/community-process"
  end

  def opensource_architecture_url
    community_base_url "wiki/architecture-overview"
  end

  def opensource_download_path(opts=nil)
    community_base_url "open-source/download-origin", opts
  end
  def opensource_download_url(opts=nil)
    opensource_download_path opts
  end

  def getting_started_guide_url
    community_base_url 'developers/install-the-client-tools'
  end

  def cli_on_windows_user_guide_topic_url
    community_base_url 'entries/23056511#windows'
  end

  def git_homepage_url
    "http://git-scm.com/"
  end

  def pricing_url(opts = nil)
    community_base_url 'developers/pricing', opts
  end

  def legal_url
    community_base_url 'legal'
  end

  def policy_url
    community_base_url 'policy'
  end

  def services_agreement_url
    community_base_url 'legal/services_agreement'
  end

  def acceptable_use_url
    community_base_url 'legal/acceptable_use'
  end

  def privacy_policy_url
    community_base_url 'legal/openshift_privacy'
  end

  def terms_of_service_url
    community_base_url 'legal/site_terms'
  end

  def security_policy_url
    community_base_url 'policy/security'
  end

  def tax_exempt_help_status
    community_base_url 'policy/tax-exemptions'
  end

  def create_quickstart_url
    community_base_url 'node/add/quickstart'
  end

  def community_quickstarts_url
    community_base_url 'quickstarts'
  end

  def console_help_links
    [
      {:href => user_guide_url,
       :name => :OpenShift_User_Guide },
      {:href => client_tools_install_help_url,
       :name => :help_install_rhc },
      {:href => sync_git_with_remote_repo_knowledge_base_url,
       :name => :help_sync_repo }
    ]
  end

  def console_faq_links
    [
      {:href => community_base_url('entries/23608756'),
       :name => :faq_own_domain},
      {:href => cli_on_windows_user_guide_topic_url,
       :name => :faq_install_win},
      {:href => community_base_url('entries/23042806'),
       :name => :faq_pub_site}
    ]
  end

  def enterprise_evaluation_request_url
    community_base_url 'page/openshift-enterprise-online-evaluation-request'
  end

  def resource_request_url
    community_base_url 'page/resource-request-form'
  end

  def support_email
    'support@getupcloud.com'
  end

  def support_url
    'https://getup.zendesk.com/home'
  end

  def getupcloud_url
    'http://getupcloud.com'
  end
  def alias_docs_url
    community_base_url 'entries/23608756'
  end
end