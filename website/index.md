---
layout: default
---

# Modern Slavery Statements

The UK Modern Slavery Act (2015) and Australia's Modern Slavery Act (2018) require large businesses to issue modern slavery statements, annually reporting on actions taken to mitigate the risk of modern slavery within their operations and supply chains, fostering transparency and accountability.

Sample Statements:

<table>
  <thead>
    <tr>
      <th>Company Name</th>
      <th>Statement</th>
      <th>Additional Information</th>
    </tr>
  </thead>
  <tbody>
    {% for row in site.data.modern_slavery_statements%}
      <tr>
        <td>{{ row["Company Name"] }}</td>
        <td><a href="{{ row["Statement URL"] }}">{{ row["Statement Name"] }}</a></td>
        <td><a href="{{ row["Additional Information URL"] }}">{{ row["Additional Information Text"] }}</a></td>
      </tr>
    {% endfor %}
  </tbody>
</table>

Read more:
- [UK Modern Slavery Statements](https://modern-slavery-statement-registry.service.gov.uk/)
- [Australia Online Register for Modern Slavery Statements](https://modernslaveryregister.gov.au/)
- [Business & Human Rights Resource Centre: Modern Slavery Registry](https://www.business-humanrights.org/en/from-us/modern-slavery-statements/)


