<?xml version="1.0" encoding="UTF-8"?>
<Workflow xmlns="http://soap.sforce.com/2006/04/metadata">
    <fieldUpdates>
        <fullName>Opportunity_Sub_Type</fullName>
        <field>OpportunitySubType__c</field>
        <formula>TEXT(SBQQ__Opportunity2__r.Opportunity_Sub_Type__c)</formula>
        <name>Opportunity Sub Type</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Owner_Region</fullName>
        <field>Owner_Region__c</field>
        <formula>SBQQ__Opportunity2__r.ETM_Region__c</formula>
        <name>Owner Region</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Owner_Sub_Region</fullName>
        <field>OwnerSubRegion__c</field>
        <formula>SBQQ__Opportunity2__r.ETM_Territory__c</formula>
        <name>Owner Sub Region</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <fieldUpdates>
        <fullName>Populate_Installation_Assigned_To</fullName>
        <description>[SF-636] Populate Installation Assigned To from Oppty to Quote</description>
        <field>Installation_Assigned_To__c</field>
        <formula>TEXT ( SBQQ__Opportunity2__r.Installation_Assigned_To__c )</formula>
        <name>Populate Installation Assigned To</name>
        <notifyAssignee>false</notifyAssignee>
        <operation>Formula</operation>
        <protected>false</protected>
    </fieldUpdates>
    <rules>
        <fullName>Quote%3A Populate Opportunity field to Quote CPQ</fullName>
        <actions>
            <name>Opportunity_Sub_Type</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Owner_Region</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Owner_Sub_Region</name>
            <type>FieldUpdate</type>
        </actions>
        <actions>
            <name>Populate_Installation_Assigned_To</name>
            <type>FieldUpdate</type>
        </actions>
        <active>false</active>
        <description>[SF-636] updated rule criteria</description>
        <formula>TRUE</formula>
        <triggerType>onAllChanges</triggerType>
    </rules>
</Workflow>
