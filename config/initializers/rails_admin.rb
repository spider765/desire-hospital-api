RailsAdmin.config do |config|
  config.asset_source = :sprockets

  ### Popular gems integration
  config.model 'Appointment' do
    list do
      field :id
      field :name
      field :email
      field :phone
      field :doctor
      field :appointment_date
      field :appointment_time
      field :notes
    end
    show do
      include_all_fields
    end
  end

  config.model 'Message' do
    list do
      field :id
      field :name
      field :email
      field :body
      field :created_at
    end
    show do
      include_all_fields
    end
  end
  ## == Devise ==
  # config.authenticate_with do
  #   warden.authenticate! scope: :user
  # end
  # config.current_user_method(&:current_user)

  ## == CancanCan ==
  # config.authorize_with :cancancan

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/railsadminteam/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app

    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
