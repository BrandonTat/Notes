### React Functional Components

* Components that do not need to keep track of internal states.

```JavaScript
import React from 'react';

const Counts = ({ previousCounts }) => (
  <ul>
    previousCounts.map((count, idx) => <li key={idx}>{count}</li>)
  </ul>
);

export default Count;
```

* When mapping over something give each item in the array a unique identifier, as done in the above code ```key={idx}```.
  * If a unique identifier is not provided and there is a change made to a single ```li``` element, then React will update all li's in the DOM instead of just the one that was changed.
