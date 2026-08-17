.class public final synthetic Lcom/sigmob/sdk/nativead/S;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/sigmob/sdk/nativead/f;


# direct methods
.method public synthetic constructor <init>(Lcom/sigmob/sdk/nativead/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/sigmob/sdk/nativead/S;->b:Lcom/sigmob/sdk/nativead/f;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/sigmob/sdk/nativead/S;->b:Lcom/sigmob/sdk/nativead/f;

    invoke-static {v0}, Lcom/sigmob/sdk/nativead/f;->c(Lcom/sigmob/sdk/nativead/f;)V

    return-void
.end method
