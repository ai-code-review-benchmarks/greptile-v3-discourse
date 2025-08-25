import DiscourseRoute from "discourse/routes/discourse";

export default class EditCategoryTabs extends DiscourseRoute {
  model() {
    return this.modelFor("edit-category");
  }

  setupController(controller, model, transition) {
    super.setupController(...arguments);

    const parentParams = this.paramsFor("edit-category");

    controller.setProperties({
      parentParams,
      selectedTab: transition.to.params.tab,
      showTooltip: false,
    });
  }
}
