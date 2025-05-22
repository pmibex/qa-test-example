graph TD
  A[Start Login Test] --> B[Open Login Page]
  B --> C[Enter Credentials]
  C --> D{Valid Credentials?}
  D -- Yes --> E[Check for Successful Redirect]
  D -- No --> F[Verify Error Message Displayed]
  E --> G[Session Token Valid?]
  G -- Yes --> H[Pass]
  G -- No --> I[Fail - Token Issue]
  F --> H
