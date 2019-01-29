/* 2018-12-23 (cc) <paul4hough@gmail.com>
   FIXME what is this for?
*/
package main

import (
	"encoding/json"
	"fmt"
	"reflect"
	// "github.com/davecgh/go-spew/spew"
)

var (
	jdata = []byte(`
{
    "alerts": [
        {
            "annotations": {
                "description": "thunderbird is down"
            },
            "endsAt": "2018-12-23T03:16:46.280924258-07:00",
            "generatorURL": "http://cbed:9090/graph?g0.expr=namedprocess_namegroup_num_procs%7Bgroupname%3D%22thunderbird%22%2Cjob%3D%22proc%22%7D+%3D%3D+0&g0.tab=1",
            "labels": {
                "alertname": "thunderbird-down",
                "ansible": "thunderbird-restart",
                "groupname": "thunderbird",
                "instance": "localhost:9256",
                "job": "proc"
            },
            "startsAt": "2018-12-23T03:16:31.280924258-07:00",
            "status": "resolved"
        }
    ],
    "commonAnnotations": {
        "description": "thunderbird is down"
    },
    "commonLabels": {
        "alertname": "thunderbird-down",
        "ansible": "thunderbird-restart",
        "groupname": "thunderbird",
        "instance": "localhost:9256",
        "job": "proc"
    },
    "externalURL": "http://cbed:9093",
    "groupKey": "{}/{ansible=~\"^(?:.*)$\"}:{alertname=\"thunderbird-down\", instance=\"localhost:9256\"}",
    "groupLabels": {
        "alertname": "thunderbird-down",
        "instance": "localhost:9256"
    },
    "receiver": "ansible",
    "status": "resolved",
    "version": "4"
}`)
)



func main() {

	var mdata map[string]interface{}

	if err := json.Unmarshal(jdata, &mdata); err != nil {
        panic(err)
    }

	for i, alert := range mdata["alerts"].([]interface{}) {
		fmt.Println(i)
		labels := alert.
			(map[string]interface{})["labels"].
			(map[string]interface{})
		fmt.Println(reflect.TypeOf(labels))
		for lk, lv := range labels {
			fmt.Println(lk,"->",lv)
		}
		fmt.Println("")
		// spew.Dump(v)
	}

}
