if default_locale = node[:system][:locale]
  params = %w(LANG LANGUAGE LC_ALL).map { |name| [name, default_locale].join '=' }

  execute 'set default locale' do
    command 'update-locale ' + params.join(' ')
  end
end
