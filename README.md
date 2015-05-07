# StatusPage.io Dashing Widget

A widget for [Dashing](https://github.com/Shopify/dashing) to monitor the status of a service which uses the StatusPage.io service.

## Incomplete list of services using StatusPage.io

 * Linode (http://status.linode.com)
 * New Relic (http://status.newrelic.com)
 * Travis CI (http://status.travis-ci.com)
 * Disqus (http://status.disqus.com)
 * Vimeo (http://status.vimeo.com)
 * KISSMetrics (http://status.kissmetrics.com)
 * Citrix GoToMeeting (http://status.gotomeeting.com)
 * Kickstarter (http://status.kickstarter.com)
 * RedisLabs (https://status.redislabs.com)

## Usage

 * Copy the contents of the `widgets` and `jobs` directories in to your dashing project
 * Edit your `config.yml` file (creating it if necessary), based on the example provided (`config.yml.statuspageio-example`)
   * Create a node for each service you wish to monitor, with the following parameters:
     * REQUIRED: `uri` is the path to `index.json` on the StatusPage.io status page of the service you are interested in. E.g. `http://status.linode.com/index.json`
     * OPTIONAL: `components` is an array of the names of components of the service that you are interested in. If it's empty or not set, all components will be used.
   * N.B. for backwards compatibility, providing only `uri` and `components` directly underneath :statuspageio:, a single nameless service will be created accessible with `data-id="statuspageio"`.
 * Add the HTML to your dashboard based on the example in `dashboards/statuspageio-example.erb`, customising the `data-id` property corresponding to the name of the service in your config.yml, and the `data-title` to set the title of the widget. E.g.:

   ````html
   <li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
      <div data-id="statuspageio_linode" data-view="Statuspageio" data-title="Linode"></div>
   </li>
   ````

## Screenshot

![Screenshot of StatusPage.io Dashing Widget](https://raw.githubusercontent.com/warrenguy/dashing-statuspageio/master/screenshot.png)

## TODO

 * Make the widget less ugly
