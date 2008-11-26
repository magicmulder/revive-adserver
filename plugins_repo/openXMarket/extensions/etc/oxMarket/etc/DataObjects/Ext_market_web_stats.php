<?php
/**
 * Table Definition for ext_market_web_stats
 */
require_once MAX_PATH.'/lib/max/Dal/DataObjects/DB_DataObjectCommon.php';

class DataObjects_Ext_market_web_stats extends DB_DataObjectCommon 
{
    ###START_AUTOCODE
    /* the code below is auto generated do not remove the above tag */

    public $__table = 'ext_market_web_stats';            // table name
    public $p_website_id;                    // CHAR(36) => openads_char => 130 
    public $impressions;                     // INT(11) => openads_int => 129 
    public $day_time;                        // DATETIME() => openads_datetime => 14 
    public $revenue;                         // DECIMAL(17,5) => openads_decimal => 1 
    public $ecpm;                            // DECIMAL(17,5) => openads_decimal => 1 
    public $width;                           // SMALLINT(6) => openads_smallint => 1 
    public $height;                          // SMALLINT(6) => openads_smallint => 1 

    /* Static get */
    function staticGet($k,$v=NULL) { return DB_DataObject::staticGet('DataObjects_Ext_market_web_stats',$k,$v); }

    var $defaultValues = array(
                'p_website_id' => '',
                );

    /* the code above is auto generated do not remove the tag below */
    ###END_AUTOCODE

    function getWebsiteStatsByAgencyId($aOption)
    {
		//TODO change to use new object
        $tableName = $this->tableName();
        $orderDir = ($aOption['orderdirection'] == 'down') ? 'DESC' : 'ASC';
        if (empty($aOption['listorder'])) {
            $orderClause = 'affiliates.name';
        } else {
            $orderClause = ($aOption['listorder'] == 'name') ? 'affiliates.name' : $aOption['listorder'];
        }
        $orderClause .= " $orderDir";


        $oAffiliate = & OA_Dal::factoryDO('affiliates');

        $oWebsitePref = & OA_Dal::factoryDO('ext_market_website_pref');
        $oWebsitePref->joinAdd($oAffiliate, 'INNER', 'affiliates');

        $oAccountMapping = & OA_Dal::factoryDO('ext_market_account_mapping');
        $oAccountMapping->agencyid = OA_Permission::getAgencyId();

        $this->selectAdd();
        $this->selectAdd('affiliates.affiliateid AS id');
        $this->selectAdd('affiliates.name AS name');
        $this->selectAdd('SUM(impressions) AS impressions');
        $this->selectAdd('SUM(revenue) AS revenue');
        $this->selectAdd('FORMAT(SUM(revenue) / (SUM(impressions) / 1000), 2) AS ecpm');
        $this->joinAdd($oAccountMapping);
        $this->joinAdd($oWebsitePref);
        if (!empty($aOption['period_start']) && !empty($aOption['period_end'])) {
            $this->whereAdd("$tableName.day >= '{$aOption['period_start']}' AND $tableName.day <= '{$aOption['period_end']}'");
        } else if (!empty($aOption['period_start']) || !empty($aOption['period_end'])) {
            $date = (!empty($aOption['period_start'])) ? $aOption['period_start'] : $aOption['period_end'];
            $this->whereAdd("$tableName.day = '$date'");
        }
        $this->groupBy('p_website_id');
        if (!empty($orderClause)) {
            $this->orderBy($orderClause);
        }
        $this->find();
        while ($this->fetch()) {
            $aResult[] = $this->toArray();
        }

        return $aResult;
    }

    function getZoneStatsByAffiliateId($aOption)
    {
		//TODO change to use new object
        $tableName = $this->tableName();
        $orderDir = ($aOption['orderdirection'] == 'down') ? 'DESC' : 'ASC';
        if (empty($aOption['listorder'])) {
            $orderClause = 'adsize.description';
        } else {
            $orderClause = ($aOption['listorder'] == 'description') ? 'adsize.description' : $aOption['listorder'];
        }
        $orderClause .= " $orderDir";

        $oAdSize = & OA_Dal::factoryDO('ext_market_ad_size');
        $oWebsitePref = & OA_Dal::factoryDO('ext_market_website_pref');

        $this->selectAdd();
        $this->selectAdd('adsize.description AS description');
        $this->selectAdd('adsize.width AS width');
        $this->selectAdd('adsize.length AS length');
        $this->selectAdd('SUM(impressions) AS impressions');
        $this->selectAdd('SUM(revenue) AS revenue');
        $this->selectAdd('FORMAT(SUM(revenue) / (SUM(impressions) / 1000), 2) AS ecpm');
        $this->joinAdd($oAdSize, 'INNER', 'adsize');
        $this->joinAdd($oWebsitePref);
        $this->whereAdd($oWebsitePref->tableName() .".affiliateid = {$aOption['affiliateid']}");
        if (!empty($aOption['period_start']) && !empty($aOption['period_end'])) {
            $this->whereAdd("$tableName.day >= '{$aOption['period_start']}' AND $tableName.day <= '{$aOption['period_end']}'");
        } else if (!empty($aOption['period_start']) || !empty($aOption['period_end'])) {
            $date = (!empty($aOption['period_start'])) ? $aOption['period_start'] : $aOption['period_end'];
            $this->whereAdd("$tableName.day = '$date'");
        }
        $this->groupBy($tableName.'.ad_size_id');
        if (!empty($orderClause)) {
            $this->orderBy($orderClause);
        }
        $this->find();
        while ($this->fetch()) {
            $aResult[] = $this->toArray();
        }

        return $aResult;
    }
}
?>