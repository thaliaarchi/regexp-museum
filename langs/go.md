# Go `regexp`

[[src](https://github.com/golang/go/tree/master/src/regexp)] [[docs](https://pkg.go.dev/regexp)]

Authors: Rob Pike (first version) and Russ Cox[^pike-emails]

In the Google TechTalk for the initial release of Go, Rob Pike mentions that
some packages, including `regexp`, “work fine but are too simple”. I should
analyze earlier designs of `regexp`, including [at the initial release](https://github.com/golang/go/blob/c90d392ce3d3203e0c32b3f98d1e68c4c2b4c49b/src/pkg/regexp/regexp.go).

- `rsc.io/binaryregexp` [[src](https://github.com/rsc/binaryregexp)]: simple
  fork of Go `regexp`, changing it to work on Latin1, instead of UTF-8

[^pike-emails]: [“Re: forth on early unix”](../people/rob_pike.md#emails),
  Rob Pike, 2025-09-22 email
