require "rails_helper"

RSpec.describe ProblemInfosController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/problem_infos").to route_to("problem_infos#index")
    end

    it "routes to #new" do
      expect(get: "/problem_infos/new").to route_to("problem_infos#new")
    end

    it "routes to #show" do
      expect(get: "/problem_infos/1").to route_to("problem_infos#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/problem_infos/1/edit").to route_to("problem_infos#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/problem_infos").to route_to("problem_infos#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/problem_infos/1").to route_to("problem_infos#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/problem_infos/1").to route_to("problem_infos#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/problem_infos/1").to route_to("problem_infos#destroy", id: "1")
    end
  end
end
