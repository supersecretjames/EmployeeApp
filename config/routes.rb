EmployeeApp::Application.routes.draw do
  resources :employees
  resources :teams
  resources :team_memberships
  resources :employee_profiles
end
