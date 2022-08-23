FROM nginx:alpine

ENV RANDOM_BEER https://api.punkapi.com/v2/beers/random
ENV STYLES https://rustybeer.herokuapp.com/styles

CMD ["/bin/sh" , "-c" , "envsubst '$$RANDOM_BEER $$STYLES ' < /etc/nginx/conf.d/default.conf.template > /etc/nginx/conf.d/default.conf && exec nginx -g 'daemon off;'"]
