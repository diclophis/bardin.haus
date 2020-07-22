# layer 1 is linux-box stuff
FROM wkndr:latest as wkndr

COPY Wkndrfile /var/lib/wkndr/

COPY public/* /var/lib/wkndr/public/
