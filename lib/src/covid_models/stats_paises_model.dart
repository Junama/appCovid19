
import 'dart:convert';

StatsCovid statsCovidFromJson(String str) => StatsCovid.fromJson(json.decode(str));

String statsCovidToJson(StatsCovid data) => json.encode(data.toJson());

class StatsCovid {
    int total;
    int all;
    String allUpdated;
    int countries;
    String countriesUpdated;
    int byCountry;
    String byCountryUpdated;
    int byCountryLive;
    String byCountryLiveUpdated;
    int byCountryTotal;
    String byCountryTotalUpdated;
    int dayOne;
    String dayOneUpdated;
    int dayOneLive;
    String dayOneLiveUpdated;
    int dayOneTotal;
    String dayOneTotalUpdated;
    int liveCountryStatus;
    String liveCountryStatusUpdated;
    int liveCountryStatusAfterDate;
    String liveCountryStatusAfterDateUpdated;
    int stats;
    String statsUpdated;
    int statsCovidDefault;
    String defaultUpdated;
    int submitWebhook;
    String submitWebhookUpdated;
    int summary;
    String summaryUpdated;

    StatsCovid({
        this.total,
        this.all,
        this.allUpdated,
        this.countries,
        this.countriesUpdated,
        this.byCountry,
        this.byCountryUpdated,
        this.byCountryLive,
        this.byCountryLiveUpdated,
        this.byCountryTotal,
        this.byCountryTotalUpdated,
        this.dayOne,
        this.dayOneUpdated,
        this.dayOneLive,
        this.dayOneLiveUpdated,
        this.dayOneTotal,
        this.dayOneTotalUpdated,
        this.liveCountryStatus,
        this.liveCountryStatusUpdated,
        this.liveCountryStatusAfterDate,
        this.liveCountryStatusAfterDateUpdated,
        this.stats,
        this.statsUpdated,
        this.statsCovidDefault,
        this.defaultUpdated,
        this.submitWebhook,
        this.submitWebhookUpdated,
        this.summary,
        this.summaryUpdated,
    });

    factory StatsCovid.fromJson(Map<String, dynamic> json) => StatsCovid(
        total                            : json["Total"],
        all                              : json["All"],
        allUpdated                       : json["AllUpdated"],
        countries                        : json["Countries"],
        countriesUpdated                 : json["CountriesUpdated"],
        byCountry                        : json["ByCountry"],
        byCountryUpdated                 : json["ByCountryUpdated"],
        byCountryLive                    : json["ByCountryLive"],
        byCountryLiveUpdated             : json["ByCountryLiveUpdated"],
        byCountryTotal                   : json["ByCountryTotal"],
        byCountryTotalUpdated            : json["ByCountryTotalUpdated"],
        dayOne                           : json["DayOne"],
        dayOneUpdated                    : json["DayOneUpdated"],
        dayOneLive                       : json["DayOneLive"],
        dayOneLiveUpdated                : json["DayOneLiveUpdated"],
        dayOneTotal                      : json["DayOneTotal"],
        dayOneTotalUpdated               : json["DayOneTotalUpdated"],
        liveCountryStatus                : json["LiveCountryStatus"],
        liveCountryStatusUpdated         : json["LiveCountryStatusUpdated"],
        liveCountryStatusAfterDate       : json["LiveCountryStatusAfterDate"],
        liveCountryStatusAfterDateUpdated: json["LiveCountryStatusAfterDateUpdated"],
        stats                            : json["Stats"],
        statsUpdated                     : json["StatsUpdated"],
        statsCovidDefault                : json["Default"],
        defaultUpdated                   : json["DefaultUpdated"],
        submitWebhook                    : json["SubmitWebhook"],
        submitWebhookUpdated             : json["SubmitWebhookUpdated"],
        summary                          : json["Summary"],
        summaryUpdated                   : json["SummaryUpdated"],
    );

    Map<String, dynamic> toJson() => {
        "Total"                            : total,
        "All"                              : all,
        "AllUpdated"                       : allUpdated,
        "Countries"                        : countries,
        "CountriesUpdated"                 : countriesUpdated,
        "ByCountry"                        : byCountry,
        "ByCountryUpdated"                 : byCountryUpdated,
        "ByCountryLive"                    : byCountryLive,
        "ByCountryLiveUpdated"             : byCountryLiveUpdated,
        "ByCountryTotal"                   : byCountryTotal,
        "ByCountryTotalUpdated"            : byCountryTotalUpdated,
        "DayOne"                           : dayOne,
        "DayOneUpdated"                    : dayOneUpdated,
        "DayOneLive"                       : dayOneLive,
        "DayOneLiveUpdated"                : dayOneLiveUpdated,
        "DayOneTotal"                      : dayOneTotal,
        "DayOneTotalUpdated"               : dayOneTotalUpdated,
        "LiveCountryStatus"                : liveCountryStatus,
        "LiveCountryStatusUpdated"         : liveCountryStatusUpdated,
        "LiveCountryStatusAfterDate"       : liveCountryStatusAfterDate,
        "LiveCountryStatusAfterDateUpdated": liveCountryStatusAfterDateUpdated,
        "Stats"                            : stats,
        "StatsUpdated"                     : statsUpdated,
        "Default"                          : statsCovidDefault,
        "DefaultUpdated"                   : defaultUpdated,
        "SubmitWebhook"                    : submitWebhook,
        "SubmitWebhookUpdated"             : submitWebhookUpdated,
        "Summary"                          : summary,
        "SummaryUpdated"                   : summaryUpdated,
    };
}
