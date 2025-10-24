# caledonia

Personal calendar and event management system using `pass`.

## Usage

```
Usage: caledonia [command] [options]

Commands:
        edit                            Edit calendar
        show [timeframe]                Show entries
        show <date> <date>              Show entries between dates
        search <query>                  Search entries
        tags <tags>                     Filter entries by tags
        help                            Show this help message

Timeframes:
        today                           Current day
        week                            Current week
        month                           Current month
        year                            Current year
        N[dwmy]                         Number of (d)ays, (w)eeks, (m)onths, or (y)ears

Format:
        Event                           YYYY-MM-DD: (@ HH:MM AM/PM) Item ["tag", "tag"]
        Range                           YYYY-MM-DD to YYYY-MM-DD: (@ HH:MM AM/PM) Item ["tag", "tag"]
        Relative                        YYYY-MM-DD +N[dwmy]: (@ HH:MM AM/PM) Item ["tag", "tag"]
        Recurring                       YYYY-MM-DD *N[dwmy]: (@ HH:MM AM/PM) Item ["tag", "tag"]

Environment variables:
        CALEDONIA_CALENDAR_LOCATION     Calendar location in pass (default "Calendar")
        CALEDONIA_TIMEFRAME_DEFAULT     Default timeframe (default "90")
```

## Dependencies

- bash
- coreutils
- sed
- pass

## License

```
Copyright (C) 2025 ocdb

This program is free software: you can redistribute it and/or modify
it under the terms of the GNU General Public License as published by
the Free Software Foundation, either version 3 of the License, or
(at your option) any later version.

This program is distributed in the hope that it will be useful,
but WITHOUT ANY WARRANTY; without even the implied warranty of
MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
GNU General Public License for more details.

You should have received a copy of the GNU General Public License
along with this program.  If not, see <https://www.gnu.org/licenses/>.
```
