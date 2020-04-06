# frozen_string_literal: true

# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     https://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# Auto-generated by gapic-generator-ruby. DO NOT EDIT!


module Google
  module Cloud
    module DataCatalog
      module V1
        # Tags are used to attach custom metadata to Data Catalog resources. Tags
        # conform to the specifications within their tag template.
        #
        # See [Data Catalog IAM](/data-catalog/docs/concepts/iam) for information on
        # the permissions needed to create or view tags.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the tag in URL format. Example:
        #
        #     * projects/\\{project_id}/locations/\\{location}/entrygroups/\\{entry_group_id}/entries/\\{entry_id}/tags/\\{tag_id}
        #
        #     where `tag_id` is a system-generated identifier.
        #     Note that this Tag may not actually be stored in the location in this name.
        # @!attribute [rw] template
        #   @return [String]
        #     Required. The resource name of the tag template that this tag uses. Example:
        #
        #     * projects/\\{project_id}/locations/\\{location}/tagTemplates/\\{tag_template_id}
        #
        #     This field cannot be modified after creation.
        # @!attribute [r] template_display_name
        #   @return [String]
        #     Output only. The display name of the tag template.
        # @!attribute [rw] column
        #   @return [String]
        #     Resources like Entry can have schemas associated with them. This scope
        #     allows users to attach tags to an individual column based on that schema.
        #
        #     For attaching a tag to a nested column, use `.` to separate the column
        #     names. Example:
        #
        #     * `outer_column.inner_column`
        # @!attribute [rw] fields
        #   @return [Google::Protobuf::Map{String => Google::Cloud::DataCatalog::V1::TagField}]
        #     Required. This maps the ID of a tag field to the value of and additional information
        #     about that field. Valid field IDs are defined by the tag's template. A tag
        #     must have at least 1 field and at most 500 fields.
        class Tag
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [String]
          # @!attribute [rw] value
          #   @return [Google::Cloud::DataCatalog::V1::TagField]
          class FieldsEntry
            include Google::Protobuf::MessageExts
            extend Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # Contains the value and supporting information for a field within
        # a {Google::Cloud::DataCatalog::V1::Tag Tag}.
        # @!attribute [r] display_name
        #   @return [String]
        #     Output only. The display name of this field.
        # @!attribute [rw] double_value
        #   @return [Float]
        #     Holds the value for a tag field with double type.
        # @!attribute [rw] string_value
        #   @return [String]
        #     Holds the value for a tag field with string type.
        # @!attribute [rw] bool_value
        #   @return [Boolean]
        #     Holds the value for a tag field with boolean type.
        # @!attribute [rw] timestamp_value
        #   @return [Google::Protobuf::Timestamp]
        #     Holds the value for a tag field with timestamp type.
        # @!attribute [rw] enum_value
        #   @return [Google::Cloud::DataCatalog::V1::TagField::EnumValue]
        #     Holds the value for a tag field with enum type. This value must be
        #     one of the allowed values in the definition of this enum.
        # @!attribute [r] order
        #   @return [Integer]
        #     Output only. The order of this field with respect to other fields in this tag. It can be
        #     set in {Google::Cloud::DataCatalog::V1::TagTemplateField#order Tag}. For
        #     example, a higher value can indicate a more important field. The value can
        #     be negative. Multiple fields can have the same order, and field orders
        #     within a tag do not have to be sequential.
        class TagField
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods

          # Holds an enum value.
          # @!attribute [rw] display_name
          #   @return [String]
          #     The display name of the enum value.
          class EnumValue
            include Google::Protobuf::MessageExts
            extend Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # A tag template defines a tag, which can have one or more typed fields.
        # The template is used to create and attach the tag to GCP resources.
        # [Tag template roles](/iam/docs/understanding-roles#data-catalog-roles)
        # provide permissions to create, edit, and use the template. See, for example,
        # the [TagTemplate User](/data-catalog/docs/how-to/template-user) role, which
        # includes permission to use the tag template to tag resources.
        # @!attribute [rw] name
        #   @return [String]
        #     The resource name of the tag template in URL format. Example:
        #
        #     * projects/\\{project_id}/locations/\\{location}/tagTemplates/\\{tag_template_id}
        #
        #     Note that this TagTemplate and its child resources may not actually be
        #     stored in the location in this name.
        # @!attribute [rw] display_name
        #   @return [String]
        #     The display name for this template. Defaults to an empty string.
        # @!attribute [rw] fields
        #   @return [Google::Protobuf::Map{String => Google::Cloud::DataCatalog::V1::TagTemplateField}]
        #     Required. Map of tag template field IDs to the settings for the field.
        #     This map is an exhaustive list of the allowed fields. This map must contain
        #     at least one field and at most 500 fields.
        #
        #     The keys to this map are tag template field IDs. Field IDs can contain
        #     letters (both uppercase and lowercase), numbers (0-9) and underscores (_).
        #     Field IDs must be at least 1 character long and at most
        #     64 characters long. Field IDs must start with a letter or underscore.
        class TagTemplate
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] key
          #   @return [String]
          # @!attribute [rw] value
          #   @return [Google::Cloud::DataCatalog::V1::TagTemplateField]
          class FieldsEntry
            include Google::Protobuf::MessageExts
            extend Google::Protobuf::MessageExts::ClassMethods
          end
        end

        # The template for an individual field within a tag template.
        # @!attribute [r] name
        #   @return [String]
        #     Output only. The resource name of the tag template field in URL format. Example:
        #
        #     * projects/\\{project_id}/locations/\\{location}/tagTemplates/\\{tag_template}/fields/\\{field}
        #
        #     Note that this TagTemplateField may not actually be stored in the location
        #     in this name.
        # @!attribute [rw] display_name
        #   @return [String]
        #     The display name for this field. Defaults to an empty string.
        # @!attribute [rw] type
        #   @return [Google::Cloud::DataCatalog::V1::FieldType]
        #     Required. The type of value this tag field can contain.
        # @!attribute [rw] is_required
        #   @return [Boolean]
        #     Whether this is a required field. Defaults to false.
        # @!attribute [rw] order
        #   @return [Integer]
        #     The order of this field with respect to other fields in this tag
        #     template. For example, a higher value can indicate a more important field.
        #     The value can be negative. Multiple fields can have the same order, and
        #     field orders within a tag do not have to be sequential.
        class TagTemplateField
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods
        end

        # @!attribute [rw] primitive_type
        #   @return [Google::Cloud::DataCatalog::V1::FieldType::PrimitiveType]
        #     Represents primitive types - string, bool etc.
        # @!attribute [rw] enum_type
        #   @return [Google::Cloud::DataCatalog::V1::FieldType::EnumType]
        #     Represents an enum type.
        class FieldType
          include Google::Protobuf::MessageExts
          extend Google::Protobuf::MessageExts::ClassMethods

          # @!attribute [rw] allowed_values
          #   @return [Array<Google::Cloud::DataCatalog::V1::FieldType::EnumType::EnumValue>]
          #     Required on create; optional on update. The set of allowed values for
          #     this enum. This set must not be empty, the display names of the values in
          #     this set must not be empty and the display names of the values must be
          #     case-insensitively unique within this set. Currently, enum values can
          #     only be added to the list of allowed values. Deletion and renaming of
          #     enum values are not supported. Can have up to 500 allowed values.
          class EnumType
            include Google::Protobuf::MessageExts
            extend Google::Protobuf::MessageExts::ClassMethods

            # @!attribute [rw] display_name
            #   @return [String]
            #     Required. The display name of the enum value. Must not be an empty string.
            class EnumValue
              include Google::Protobuf::MessageExts
              extend Google::Protobuf::MessageExts::ClassMethods
            end
          end

          module PrimitiveType
            # This is the default invalid value for a type.
            PRIMITIVE_TYPE_UNSPECIFIED = 0

            # A double precision number.
            DOUBLE = 1

            # An UTF-8 string.
            STRING = 2

            # A boolean value.
            BOOL = 3

            # A timestamp.
            TIMESTAMP = 4
          end
        end
      end
    end
  end
end