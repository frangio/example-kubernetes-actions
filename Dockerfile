FROM hashicorp/http-echo
CMD ["-listen=:8080", "-text=goodbye world"]

