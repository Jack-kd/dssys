.class public final synthetic Lcom/sigmob/sdk/nativead/e0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/nativead/z;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/z;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/e0;->b:Lcom/sigmob/sdk/nativead/z;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/e0;->b:Lcom/sigmob/sdk/nativead/z;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/z;->p(Lcom/sigmob/sdk/nativead/z;)V

    return-void
.end method
