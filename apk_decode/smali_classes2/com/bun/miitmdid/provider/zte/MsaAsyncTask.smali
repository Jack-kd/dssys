.class public Lcom/bun/miitmdid/provider/zte/MsaAsyncTask;
.super Landroid/os/AsyncTask;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public _conn:Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;

.field public msaIdInterface:Lcom/bun/lib/MsaIdInterface;


# direct methods
.method public constructor <init>(Lcom/bun/lib/MsaIdInterface;Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;)V
    .locals 0

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/bun/miitmdid/provider/zte/MsaAsyncTask;->msaIdInterface:Lcom/bun/lib/MsaIdInterface;

    iput-object p2, p0, Lcom/bun/miitmdid/provider/zte/MsaAsyncTask;->_conn:Lcom/bun/miitmdid/provider/zte/MsaServiceConnection;

    return-void
.end method


# virtual methods
.method public varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3

    .line 1
    const/16 v0, 0x6c

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, 0x176274a9784L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    return-object p1
.end method

.method public bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 2
    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, 0x176274a9785L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public onPostExecute(Ljava/lang/Boolean;)V
    .locals 3

    .line 1
    const/16 v0, 0x6e

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, 0x176274a9786L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 2
    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-wide v1, 0x176274a9787L

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    filled-new-array {p0, p1, v0, v1}, [Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lcom/netease/nis/sdkwrapper/Utils;->rL([Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
