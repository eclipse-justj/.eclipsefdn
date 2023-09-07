local orgs = import 'vendor/otterdog-defaults/otterdog-defaults.libsonnet';

orgs.newOrg('eclipse-justj') {
  settings+: {
    billing_email: "webmaster@eclipse.org",
    blog: "https://eclipse.dev/justj/",
    default_repository_permission: "none",
    dependabot_security_updates_enabled_for_new_repositories: false,
    description: "Eclipse JustJ provides fully-functional Java runtimes that are made available via p2 repositories.",
    email: "justj-dev@eclipse.org",
    members_can_change_project_visibility: false,
    name: "Eclipse JustJ",
    packages_containers_internal: false,
    packages_containers_public: false,
    readers_can_create_discussions: true,
    two_factor_requirement: false,
    web_commit_signoff_required: false,
    workflows+: {
      actions_can_approve_pull_request_reviews: false,
      default_workflow_permissions: "write",
    },
  },
  _repositories+:: [
    orgs.newRepo('.github') {
      allow_update_branch: false,
      default_branch: "master",
      description: "JustJ GitHub Organization",
      homepage: "",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('justj') {
      allow_update_branch: false,
      default_branch: "master",
      has_discussions: true,
      web_commit_signoff_required: false,
    },
    orgs.newRepo('justj-website') {
      allow_update_branch: false,
      default_branch: "master",
      web_commit_signoff_required: false,
    },
    orgs.newRepo('justj.tools') {
      allow_update_branch: false,
      default_branch: "master",
      has_discussions: true,
      web_commit_signoff_required: false,
    },
  ],
}
