#FROM node:8.15.1-jessie
FROM node:latest

# install clasp
RUN npm i @google/clasp -g