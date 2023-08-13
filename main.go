package main

import (
	"fmt"
	"net/http"
)

func handler(w http.ResponseWriter, r *http.Request) {
	fmt.Fprintf(w, "Hello, Kubernetes!\n")
}

func main() {
	http.HandleFunc("/", handler)
	http.ListenAndServe(":7070", nil)
}
