require "rails_helper"

RSpec.describe Project, type: :model do
  context "validations tests" do

    #tests for failure when not providing a title
    it "ensures the title is present" do
      project = Project.new(description: "Content of the description")
      expect(project.valid?).to eq(false)
    end

    #tests for failure when not providing a description
    it "ensures the description is present" do
        project = Project.new(title: "Title")
        expect(project.valid?).to eq(false)
      end

    #tests that the project actually saves correctly
    it "should be able to save project" do
      project = Project.new(title: "Title", description: "Some description content goes here")
      expect(project.save).to eq(true)
    end
  end

  #makes a few projects and tests that the .count model attribute returns the correct value
  context "scopes tests" do
    let(:params) { { title: "Title", description: "some description" } }
    before(:each) do
      Project.create(params)
      Project.create(params)
      Project.create(params)
    end

    it "should return all projects" do
      expect(Project.count).to eq(3)
    end

  end
end