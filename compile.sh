#!/bin/bash

# Delete output file just to be sure it will be compiled as new
rm -f /var/projects/shared/Interface/Proto/dotnod/threat_intelligence/v2/threat_intelligence_v2.swagger.yaml
rm -f _output/threat_intelligence_v2.swagger.yaml

protoc \
--proto_path="src/shared/Interface/Proto/" \
--proto_path="src/gen-openapi/protobuf/src/google/protobuf/" \
--proto_path="src/gen-openapi/googleapis/" \
--proto_path="src/gen-openapi/" \
--openapiv2_out="src/shared/Interface/Proto/dotnod/threat_intelligence/v2/" \
--openapiv2_opt="enums_as_ints=false" \
--openapiv2_opt="allow_merge=true" \
--openapiv2_opt="merge_file_name=threat_intelligence_v2.swagger" \
--openapiv2_opt="output_format=yaml" \
src/shared/Interface/Proto/dotnod/threat_intelligence/v2/*.proto

cp src/shared/Interface/Proto/dotnod/threat_intelligence/v2/threat_intelligence_v2.swagger.yaml _output/threat_intelligence_v2.swagger.yaml

echo Output file is in _output/ directory.