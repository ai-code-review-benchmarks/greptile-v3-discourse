import Component from "@glimmer/component";
import { tracked } from "@glimmer/tracking";
import DButton from "discourse/components/d-button";
import TopicDraftsDropdown from "discourse/components/topic-drafts-dropdown";
import concatClass from "discourse/helpers/concat-class";
import { i18n } from "discourse-i18n";
import DButtonTooltip from "float-kit/components/d-button-tooltip";
import DTooltip from "float-kit/components/d-tooltip";

export default class CreateTopicButton extends Component {
  @tracked btnTypeClass = this.args.btnTypeClass || "btn-default";
  label = "topic.create";

  <template>
    {{#if @canCreateTopic}}
      <DButton
        @action={{@action}}
        @icon="far-pen-to-square"
        @label={{this.label}}
        id="create-topic"
        class={{concatClass @btnClass this.btnTypeClass}}
      />

      {{#if @showDrafts}}
        <TopicDraftsDropdown
          @disabled={{false}}
          @btnTypeClass={{this.btnTypeClass}}
        />
      {{/if}}
    {{/if}}
  </template>
}
