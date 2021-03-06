# frozen_string_literal: true

# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema.define(version: 20_181_231_192_129) do
  create_table 'hackernews_feeds', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci ROW_FORMAT=DYNAMIC', force: :cascade do |t|
    t.datetime 'written_at'
    t.text 'title', limit: 16_777_215
    t.string 'url'
    t.string 'author'
    t.bigint 'keyword_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.string 'hacker_story_id'
    t.index ['keyword_id'], name: 'index_hackernews_feeds_on_keyword_id'
  end

  create_table 'keywords', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci ROW_FORMAT=DYNAMIC', force: :cascade do |t|
    t.string 'name'
  end

  create_table 'quora_posts', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci', force: :cascade do |t|
    t.string 'author'
    t.text 'title'
    t.string 'url'
    t.bigint 'keyword_id'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['keyword_id'], name: 'index_quora_posts_on_keyword_id'
  end

  create_table 'reddit_feeds', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci ROW_FORMAT=DYNAMIC', force: :cascade do |t|
    t.bigint 'keyword_id'
    t.datetime 'written_at'
    t.string 'sub_reddit_id'
    t.text 'title', limit: 16_777_215
    t.string 'url'
    t.string 'author'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.index ['keyword_id'], name: 'index_reddit_feeds_on_keyword_id'
  end

  create_table 'seed_migration_data_migrations', id: :integer, options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci ROW_FORMAT=DYNAMIC', force: :cascade do |t|
    t.string 'version'
    t.integer 'runtime'
    t.datetime 'migrated_on'
  end

  create_table 'user_keywords', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci ROW_FORMAT=DYNAMIC', force: :cascade do |t|
    t.bigint 'user_id'
    t.bigint 'keyword_id'
    t.index ['keyword_id'], name: 'index_user_keywords_on_keyword_id'
    t.index ['user_id'], name: 'index_user_keywords_on_user_id'
  end

  create_table 'users', options: 'ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_polish_ci ROW_FORMAT=DYNAMIC', force: :cascade do |t|
    t.string 'email'
    t.datetime 'created_at', null: false
    t.datetime 'updated_at', null: false
    t.date 'last_feed_on', default: '2018-12-24'
    t.datetime 'confirmed_at'
    t.string 'confirmation_token'
  end
end
