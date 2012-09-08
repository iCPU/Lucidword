class Cleanup < ActiveRecord::Migration
  def self.up
    end
  def self.down
    end


    create_table "spam_checks" do |t|
      t.string   "regexp"
      t.integer  "weight"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "spam_questions" do |t|
      t.string   "question"
      t.string   "answer"
      t.datetime "created_at"
      t.datetime "updated_at"
    end

    create_table "spam_reports" do |t|
      t.integer  "comment_id"
      t.string   "comment_ip"
      t.string   "comment_site_url"
      t.string   "comment_name"
      t.datetime "confirmed_at"
      t.datetime "created_at"
      t.datetime "updated_at"
      t.integer  "hit_count"
    end

  end
