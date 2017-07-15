module Lsgh
  class Repository
    def initialize(repo, client)
      @repo = repo
      @pull_requests = client.pull_requests.all(user: repo['owner']['login'], repo: repo['name'])
    end

    def to_paths
      paths = [name]
      paths += pull_requests_paths.map do |path|
        "#{name}/#{path}"
      end

      paths
    end

    def type
      if @repo['private']
        :private
      else
        :public
      end
    end

    private

    def pull_requests_paths
      paths = @pull_requests.group_by do |pull|
        pull['user']['login']
      end

      paths.map do |user, pr_group|
        pr_group.map do |pr|
          "#{user}/#{pr.title.tr('/', ' ')}"
        end
      end.inject(:+).to_a
    end

    def name
      @repo['name']
    end
  end
end
