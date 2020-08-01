# Copyright (C) 2020 Andrew Zah

# This program is free software: you can redistribute it and/or modify
# it under the terms of the GNU Affero General Public License as published
# by the Free Software Foundation, either version 3 of the License, or
# (at your option) any later version.
# 
# This program is distributed in the hope that it will be useful,
# but WITHOUT ANY WARRANTY; without even the implied warranty of
# MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
# GNU Affero General Public License for more details.
# 
# You should have received a copy of the GNU Affero General Public License
# along with this program.  If not, see <http://www.gnu.org/licenses/>.

# Use a TMP dir because the last step would be $(DIST_DIR)/%: $(DIST_DIR)/%
# otherwise. Obviously this is a circular dependency, but the step uses the
# targets to go through asset-manifest and append the hash.

.PHONY: all

build: $(CONTENT_FILES)
	sh build.sh

static: build
	find ./public/posts -name "*.png" -exec rm {} \;
	rsync -arv public/* ../generated_assets

docker: docker-build docker-push

docker-build:
	docker build . -t andrewzah/personal_site

docker-push:
	docker push andrewzah/personal_site
