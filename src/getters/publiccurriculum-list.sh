#!/usr/bin/sh

## inputs

course_id="${1}"

path="courses/${course_id}/public-curriculum-items"

. datetime.sh

## runners

resp=$( bash get.sh "${path}" "" | jq )

## outputs

bash create.sh "${path}" "${datetime}" "resp" "${resp}"
