FROM node:alpine

## -- installing from source currently not working --
## Error: Cannot find module 'lodash'
# ADD . api-spec-converter/
# RUN cd api-spec-converter && npm install
# RUN npm i -g ./api-spec-converter

RUN set -ex \
    && npm install -g api-spec-converter

ENTRYPOINT [ "api-spec-converter" ]

CMD [ "--help" ]