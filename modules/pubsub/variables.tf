/**
 * Copyright 2018 Google LLC
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 *      http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
 * See the License for the specific language governing permissions and
 * limitations under the License.
 */

variable "create_subscriber" {
  description = "Whether to create a subscription to the topic that was created and used for log entries matching the filter. If 'true', a subscription is created along with a service account that is granted roles/pubsub.subscriber and roles/pubsub.viewer to the topic."
  default     = "false"
}

variable "log_sink_writer_identity" {
  description = "The service account that logging uses to write log entries to the destination. (This is available as an output coming from the root module)."
}

variable "project_id" {
  description = "The ID of the project in which the pubsub topic will be created."
}

variable "topic_name" {
  description = "The name of the pubsub topic to be created and used for log entries matching the filter."
}

variable "topic_labels" {
  type        = map(string)
  default     = {}
  description = "A set of key/value label pairs to assign to the pubsub topic."
}

