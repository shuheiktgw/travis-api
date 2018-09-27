module Travis::API::V3
  class Services::EmailSubscription::Resubscribe < Service
    def run!
      repository = check_login_and_find(:repository)
      query.resubscribe(access_control.user, repository)
      created
    end
  end
end
