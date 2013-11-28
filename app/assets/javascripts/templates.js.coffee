@practice1 = 
  raresTemplate: Handlebars.compile "
    <ul>
      {{#each rares}}
        <li data-id=\"{{id}}\">
        <span>{{rare_name}}</span>
          <button class=\"edit button button-green\">edit</button>
          <button class=\"del button button-red\">delete</button>
        </li>
      {{/each}}
    </ul>
  "
  rareTemplate: Handlebars.compile "

      {{#each rares}}
        <p class=\"name\">{{rare_name}}</p>
        <p class=\"name\">{{rare_family}}</p>
        <p><a id=\"back-to-rares\" href=\"#\">Back to Rares</a></p>
      {{/each}}
    "
  editRareTemplate: Handlebars.compile "
  {{#each rares}}
    <form id=\"rare-edit-form\" data-id=\"{{id}}\">
      <input type=\"text\" name=\"rare[rare_name]\" value=\"{{rare_name}}\">
      <input type=\"text\" name=\"rare[rare_family]\" value=\"{{rare_family}}\">
      <input type=\"submit\" value=\"Save Changes\">
    </form>
  {{/each}}
  "