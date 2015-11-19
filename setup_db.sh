#/bin/bash
	rake db:purge
	rake db:migrate
	rake db:seed
