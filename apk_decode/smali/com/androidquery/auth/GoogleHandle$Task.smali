.class Lcom/androidquery/auth/GoogleHandle$Task;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/androidquery/auth/GoogleHandle;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Task"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/androidquery/auth/GoogleHandle;


# direct methods
.method private constructor <init>(Lcom/androidquery/auth/GoogleHandle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lcom/androidquery/auth/GoogleHandle;Lcom/androidquery/auth/GoogleHandle$1;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;-><init>(Lcom/androidquery/auth/GoogleHandle;)V

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/String;)Landroid/os/Bundle;
    .locals 7

    .line 2
    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {p1}, Lcom/androidquery/auth/GoogleHandle;->access$400(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/AccountManager;

    move-result-object v0

    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {p1}, Lcom/androidquery/auth/GoogleHandle;->access$100(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/Account;

    move-result-object v1

    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {p1}, Lcom/androidquery/auth/GoogleHandle;->access$200(Lcom/androidquery/auth/GoogleHandle;)Ljava/lang/String;

    move-result-object v2

    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {p1}, Lcom/androidquery/auth/GoogleHandle;->access$300(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v3, 0x0

    invoke-virtual/range {v0 .. v6}, Landroid/accounts/AccountManager;->getAuthToken(Landroid/accounts/Account;Ljava/lang/String;Landroid/os/Bundle;Landroid/app/Activity;Landroid/accounts/AccountManagerCallback;Landroid/os/Handler;)Landroid/accounts/AccountManagerFuture;

    move-result-object p1

    .line 3
    :try_start_0
    invoke-interface {p1}, Landroid/accounts/AccountManagerFuture;->getResult()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/accounts/OperationCanceledException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Landroid/accounts/AuthenticatorException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception v0

    move-object p1, v0

    goto :goto_0

    :catch_1
    move-exception v0

    move-object p1, v0

    goto :goto_1

    .line 4
    :goto_0
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 5
    :goto_1
    invoke-static {p1}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    :catch_2
    :goto_2
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;->doInBackground([Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Landroid/os/Bundle;)V
    .locals 3

    if-eqz p1, :cond_0

    .line 2
    const-string v0, "authtoken"

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-virtual {p1, v0}, Landroid/os/BaseBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Lcom/androidquery/auth/GoogleHandle;->access$502(Lcom/androidquery/auth/GoogleHandle;Ljava/lang/String;)Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {p1}, Lcom/androidquery/auth/GoogleHandle;->access$300(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/androidquery/auth/AccountHandle;->success(Landroid/content/Context;)V

    return-void

    .line 5
    :cond_0
    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle$Task;->this$0:Lcom/androidquery/auth/GoogleHandle;

    invoke-static {p1}, Lcom/androidquery/auth/GoogleHandle;->access$300(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;

    move-result-object v0

    const/16 v1, -0x66

    const-string v2, "rejected"

    invoke-virtual {p1, v0, v1, v2}, Lcom/androidquery/auth/AccountHandle;->failure(Landroid/content/Context;ILjava/lang/String;)V

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Lcom/androidquery/auth/GoogleHandle$Task;->onPostExecute(Landroid/os/Bundle;)V

    return-void
.end method
