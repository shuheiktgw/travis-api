module Travis::API::V3
  class Queries::Organization < Query
    params :id

    def find
      return ::Organization.find_by_id(id) if id
      raise WrongParams
    end
  end
end