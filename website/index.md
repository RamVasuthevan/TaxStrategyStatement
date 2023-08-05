---
layout: default
---

# Tax Strategy Statement

[Schedule 19 to the Finance Act 2016](https://www.legislation.gov.uk/ukpga/2016/24/schedule/19) in the United Kingdom requires large corporations (turnover above £200 million or balance sheet over £2 billion) to publish [tax strategy statements](https://www.gov.uk/guidance/large-businesses-publish-your-tax-strategy) explaining the company's:
- approach to risk management and governance arrangements in relation to UK taxation
- attitude towards tax planning (so far as affecting UK taxation),
- acceptable level of risk in relation to UK taxation
- approach towards its dealings with HMRC.

Sample Statements:

<table>
  <thead>
    <tr>
      <th>Company Name</th>
      <th>Statement</th>
    </tr>
  </thead>
  <tbody>
    {% for row in site.data.tax_strategy_statement%}
      <tr>
        <td>{{ row["Company Name"] }}</td>
        <td><a href="{{ row["Statement URL"] }}">{{ row["Statement Name"] }}</a></td>
      </tr>
    {% endfor %}
  </tbody>
</table>

Read more:
- [UK Modern Slavery Statements](https://modern-slavery-statement-registry.service.gov.uk/)

