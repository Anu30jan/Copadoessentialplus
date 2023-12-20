<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <alerts>
        <fullName>Welcome_the_customers</fullName>
        <ccEmails>anusfdc001@gmail.com</ccEmails>
        <description>Welcome the customers</description>
        <protected>false</protected>
        <recipients>
            <field>Email</field>
            <type>email</type>
        </recipients>
        <senderType>CurrentUser</senderType>
        <template>unfiled$public/Welcome_new_contacts</template>
    </alerts>
    <fieldUpdates>
        <fullName>Update_Description</fullName>
        <field>Description</field>
        <formula>&quot;Welcome Email Alert sent to the customers and a task was created&quot;</formula>
        <name>Update Description</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
        <reevaluateOnChange>false</reevaluateOnChange>
    </fieldUpdates>
    <rules>
        <fullName>New Customer workflow Rule</fullName>
        <actions>
            <name>Welcome_the_customers</name>
            <type>Alert</type>
        </actions>
        <actions>
            <name>Update_Description</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>check_new_contact</name>
            <type>Task</type>
        </actions>
        <active>true</active>
        <criteriaItems>
            <field>Contact.MailingCity</field>
            <operation>contains</operation>
            <value>A</value>
        </criteriaItems>
        <description>This workflow rule will send welcome emails to new contacts</description>
        <triggerType>onCreateOrTriggeringUpdate</triggerType>
    </rules>
    <tasks>
        <fullName>check_new_contact</fullName>
        <assignedTo>lnb001@salesforce.com</assignedTo>
        <assignedToType>user</assignedToType>
        <dueDateOffset>10</dueDateOffset>
        <notifyAssignee>false</notifyAssignee>
        <priority>Normal</priority>
        <protected>false</protected>
        <status>Not Started</status>
        <subject>check new contact</subject>
    </tasks>
</Workflow>
