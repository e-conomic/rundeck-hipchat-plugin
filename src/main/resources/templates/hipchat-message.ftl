Execution of job
<a href="${execution.job.href}">
<#if execution.job.group?has_content>${execution.job.group}/</#if>${execution.job.name}</a>
  <#if trigger == "start">
    <#if execution.context.option?has_content>
    <li>Params:
    <#list execution.context.option?keys as prop>
      ${prop} = ${execution.context.option[prop]}
    </#list>
    </li>
    </#if>
  <#elseif trigger == "failure">
    <b>failed</b>
  <#elseif trigger == "success">
    <b>succeeded</b>
</#if>
<ul>
    <li>User: ${execution.context.job.username}</li>
    <li>ExecId: ${execution.context.job.execid}</li>
</ul>
<a href="${execution.href}">View Output</a>