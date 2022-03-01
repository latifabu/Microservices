# from which imagge image we used as our base image
FROM nginx

# in the background nginx is working to help facilate the users


# label to communicate with team members
LABEL MAINTAINER=latif


# copy data from localhost to container
COPY index.html /usr/share/nginx/html

# expose port 80 in this case, for nginx
EXPOSE 80

# launch/create a container which helped us see a coniiner
CMD ["nginx", "-g", "daemon off;"]