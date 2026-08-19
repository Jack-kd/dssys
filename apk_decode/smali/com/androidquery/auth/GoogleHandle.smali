.class public Lcom/androidquery/auth/GoogleHandle;
.super Lcom/androidquery/auth/AccountHandle;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/content/DialogInterface$OnCancelListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/androidquery/auth/GoogleHandle$Task;
    }
.end annotation


# instance fields
.field private acc:Landroid/accounts/Account;

.field private accs:[Landroid/accounts/Account;

.field private act:Landroid/app/Activity;

.field private am:Landroid/accounts/AccountManager;

.field private email:Ljava/lang/String;

.field private token:Ljava/lang/String;

.field private type:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/androidquery/auth/AccountHandle;-><init>()V

    .line 2
    .line 3
    .line 4
    const-string v0, "aq.account"

    .line 5
    .line 6
    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    .line 7
    .line 8
    .line 9
    move-result v0

    .line 10
    if-eqz v0, :cond_0

    .line 11
    .line 12
    invoke-static {p1}, Lcom/androidquery/auth/GoogleHandle;->getActiveAccount(Landroid/content/Context;)Ljava/lang/String;

    .line 13
    .line 14
    .line 15
    move-result-object p3

    .line 16
    :cond_0
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    .line 17
    .line 18
    const/4 v0, 0x2

    .line 19
    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p2

    .line 23
    iput-object p2, p0, Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;

    .line 24
    .line 25
    iput-object p3, p0, Lcom/androidquery/auth/GoogleHandle;->email:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;

    .line 28
    .line 29
    .line 30
    move-result-object p1

    .line 31
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    .line 32
    .line 33
    return-void
.end method

.method public static synthetic access$100(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/Account;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$200(Lcom/androidquery/auth/GoogleHandle;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$300(Lcom/androidquery/auth/GoogleHandle;)Landroid/app/Activity;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$400(Lcom/androidquery/auth/GoogleHandle;)Landroid/accounts/AccountManager;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    .line 2
    .line 3
    return-object p0
.end method

.method public static synthetic access$502(Lcom/androidquery/auth/GoogleHandle;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 2
    .line 3
    return-object p1
.end method

.method private accountDialog()V
    .locals 5

    .line 1
    new-instance v0, Landroid/app/AlertDialog$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    .line 4
    .line 5
    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 6
    .line 7
    .line 8
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    .line 9
    .line 10
    const-string v2, "com.google"

    .line 11
    .line 12
    invoke-virtual {v1, v2}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    .line 13
    .line 14
    .line 15
    move-result-object v1

    .line 16
    iput-object v1, p0, Lcom/androidquery/auth/GoogleHandle;->accs:[Landroid/accounts/Account;

    .line 17
    .line 18
    array-length v2, v1

    .line 19
    const/4 v3, 0x1

    .line 20
    const/4 v4, 0x0

    .line 21
    if-ne v2, v3, :cond_0

    .line 22
    .line 23
    aget-object v0, v1, v4

    .line 24
    .line 25
    invoke-direct {p0, v0}, Lcom/androidquery/auth/GoogleHandle;->auth(Landroid/accounts/Account;)V

    .line 26
    .line 27
    .line 28
    return-void

    .line 29
    :cond_0
    new-array v1, v2, [Ljava/lang/String;

    .line 30
    .line 31
    :goto_0
    if-ge v4, v2, :cond_1

    .line 32
    .line 33
    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle;->accs:[Landroid/accounts/Account;

    .line 34
    .line 35
    aget-object v3, v3, v4

    .line 36
    .line 37
    iget-object v3, v3, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 38
    .line 39
    aput-object v3, v1, v4

    .line 40
    .line 41
    add-int/lit8 v4, v4, 0x1

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-virtual {v0, v1, p0}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 45
    .line 46
    .line 47
    invoke-virtual {v0, p0}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    .line 48
    .line 49
    .line 50
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 51
    .line 52
    .line 53
    move-result-object v0

    .line 54
    new-instance v1, Lcom/androidquery/AQuery;

    .line 55
    .line 56
    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    .line 57
    .line 58
    invoke-direct {v1, v2}, Lcom/androidquery/AQuery;-><init>(Landroid/app/Activity;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v0}, Lcom/androidquery/AbstractAQuery;->show(Landroid/app/Dialog;)Lcom/androidquery/AbstractAQuery;

    .line 62
    .line 63
    .line 64
    return-void
.end method

.method private auth(Landroid/accounts/Account;)V
    .locals 1

    .line 8
    iput-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;

    .line 9
    new-instance p1, Lcom/androidquery/auth/GoogleHandle$Task;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/androidquery/auth/GoogleHandle$Task;-><init>(Lcom/androidquery/auth/GoogleHandle;Lcom/androidquery/auth/GoogleHandle$1;)V

    const/4 v0, 0x0

    .line 10
    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/AsyncTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static getActiveAccount(Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    const-string v0, "aq.account"

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-interface {p0, v0, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object p0

    .line 12
    return-object p0
.end method

.method public static setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    .line 2
    .line 3
    .line 4
    move-result-object p0

    .line 5
    invoke-interface {p0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    const-string v0, "aq.account"

    .line 10
    .line 11
    invoke-interface {p0, v0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 16
    .line 17
    .line 18
    return-void
.end method


# virtual methods
.method public applyToken(Lcom/androidquery/callback/AbstractAjaxCallback;Lorg/apache/http/HttpRequest;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback<",
            "**>;",
            "Lorg/apache/http/HttpRequest;",
            ")V"
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    const-string v0, "GoogleLogin auth="

    .line 7
    .line 8
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 12
    .line 13
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    .line 15
    .line 16
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    const-string v0, "Authorization"

    .line 21
    .line 22
    invoke-interface {p2, v0, p1}, Lorg/apache/http/HttpRequest;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    return-void
.end method

.method public auth()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->email:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    invoke-direct {p0}, Lcom/androidquery/auth/GoogleHandle;->accountDialog()V

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    const-string v1, "com.google"

    invoke-virtual {v0, v1}, Landroid/accounts/AccountManager;->getAccountsByType(Ljava/lang/String;)[Landroid/accounts/Account;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_2

    .line 5
    aget-object v2, v0, v1

    .line 6
    iget-object v3, p0, Lcom/androidquery/auth/GoogleHandle;->email:Ljava/lang/String;

    iget-object v4, v2, Landroid/accounts/Account;->name:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 7
    invoke-direct {p0, v2}, Lcom/androidquery/auth/GoogleHandle;->auth(Landroid/accounts/Account;)V

    return-void

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public authenticated()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    return v0

    .line 7
    :cond_0
    const/4 v0, 0x0

    .line 8
    return v0
.end method

.method public expired(Lcom/androidquery/callback/AbstractAjaxCallback;Lcom/androidquery/callback/AjaxStatus;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback<",
            "**>;",
            "Lcom/androidquery/callback/AjaxStatus;",
            ")Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lcom/androidquery/callback/AjaxStatus;->getCode()I

    .line 2
    .line 3
    .line 4
    move-result p1

    .line 5
    const/16 p2, 0x191

    .line 6
    .line 7
    if-eq p1, p2, :cond_1

    .line 8
    .line 9
    const/16 p2, 0x193

    .line 10
    .line 11
    if-ne p1, p2, :cond_0

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    const/4 p1, 0x0

    .line 15
    return p1

    .line 16
    :cond_1
    :goto_0
    const/4 p1, 0x1

    .line 17
    return p1
.end method

.method public getCacheUrl(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 4
    .line 5
    .line 6
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    .line 8
    .line 9
    const-string p1, "#"

    .line 10
    .line 11
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    .line 13
    .line 14
    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 15
    .line 16
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    .line 18
    .line 19
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    return-object p1
.end method

.method public getType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 2

    .line 1
    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    .line 2
    .line 3
    const/16 v0, -0x66

    .line 4
    .line 5
    const-string v1, "cancel"

    .line 6
    .line 7
    invoke-virtual {p0, p1, v0, v1}, Lcom/androidquery/auth/AccountHandle;->failure(Landroid/content/Context;ILjava/lang/String;)V

    .line 8
    .line 9
    .line 10
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->accs:[Landroid/accounts/Account;

    .line 2
    .line 3
    aget-object p1, p1, p2

    .line 4
    .line 5
    const-string p2, "acc"

    .line 6
    .line 7
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 8
    .line 9
    invoke-static {p2, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 10
    .line 11
    .line 12
    iget-object p2, p0, Lcom/androidquery/auth/GoogleHandle;->act:Landroid/app/Activity;

    .line 13
    .line 14
    iget-object v0, p1, Landroid/accounts/Account;->name:Ljava/lang/String;

    .line 15
    .line 16
    invoke-static {p2, v0}, Lcom/androidquery/auth/GoogleHandle;->setActiveAccount(Landroid/content/Context;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    invoke-direct {p0, p1}, Lcom/androidquery/auth/GoogleHandle;->auth(Landroid/accounts/Account;)V

    .line 20
    .line 21
    .line 22
    return-void
.end method

.method public reauth(Lcom/androidquery/callback/AbstractAjaxCallback;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/androidquery/callback/AbstractAjaxCallback<",
            "**>;)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    .line 2
    .line 3
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;

    .line 4
    .line 5
    iget-object v0, v0, Landroid/accounts/Account;->type:Ljava/lang/String;

    .line 6
    .line 7
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 8
    .line 9
    invoke-virtual {p1, v0, v1}, Landroid/accounts/AccountManager;->invalidateAuthToken(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    .line 11
    .line 12
    const/4 p1, 0x1

    .line 13
    :try_start_0
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->am:Landroid/accounts/AccountManager;

    .line 14
    .line 15
    iget-object v1, p0, Lcom/androidquery/auth/GoogleHandle;->acc:Landroid/accounts/Account;

    .line 16
    .line 17
    iget-object v2, p0, Lcom/androidquery/auth/GoogleHandle;->type:Ljava/lang/String;

    .line 18
    .line 19
    invoke-virtual {v0, v1, v2, p1}, Landroid/accounts/AccountManager;->blockingGetAuthToken(Landroid/accounts/Account;Ljava/lang/String;Z)Ljava/lang/String;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    iput-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 24
    .line 25
    const-string v1, "re token"

    .line 26
    .line 27
    invoke-static {v1, v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 28
    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    invoke-static {v0}, Lcom/androidquery/util/AQUtility;->debug(Ljava/lang/Throwable;)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x0

    .line 36
    iput-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 37
    .line 38
    :goto_0
    iget-object v0, p0, Lcom/androidquery/auth/GoogleHandle;->token:Ljava/lang/String;

    .line 39
    .line 40
    if-eqz v0, :cond_0

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :cond_0
    const/4 p1, 0x0

    .line 44
    :goto_1
    return p1
.end method
