.class public final synthetic Lcom/sigmob/sdk/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/czhj/sdk/common/exceptions/CrashHandler$CrashHandlerListener;


# instance fields
.field public final synthetic a:Lcom/sigmob/sdk/Sigmob;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/Sigmob;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/e;->a:Lcom/sigmob/sdk/Sigmob;

    iput-object p2, p0, Lcom/sigmob/sdk/e;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final reportCrash(Ljava/lang/String;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/e;->a:Lcom/sigmob/sdk/Sigmob;

    iget-object v1, p0, Lcom/sigmob/sdk/e;->b:Ljava/lang/String;

    invoke-static {v0, v1, p1}, Lcom/sigmob/sdk/Sigmob;->d(Lcom/sigmob/sdk/Sigmob;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
