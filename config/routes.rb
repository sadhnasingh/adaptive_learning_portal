Rails.application.routes.draw do
  resources :answers
  resources :question_categories
  resources :questions
  resources :chapters
  resources :topics
  resources :subjects
  # get 'exams/index'

  devise_for :users
  get 'welcome/index'
  root 'welcome#index'
  resources :exams do
  	member do
      get 'subjects', to: "subjects#index" 
    end
  end
  	resources :subjects do
		member do
			get 'topics', to: "topics#index" 
		end
    end
    resources :topics do
		member do
		get 'chapters', to: "chapters#index" 
		end
    end
	 resources :chapters do
	 	member do
      get 'questions', to: "questions#index" 
      get 'easy_question'
      get 'medium_question'
      get 'hard_question'
    end
	end
  resources :question_categories do
   member do
      get 'questions', to: "questions#index" 
    end
  end
	 resources :questions do

	end
  resources :correct_answers do
  end
  

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
