.class public final synthetic LZ0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/smartdigimkt/h2/c1;


# direct methods
.method public synthetic constructor <init>(Lcom/smartdigimkt/h2/c1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LZ0/a;->b:Lcom/smartdigimkt/h2/c1;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, LZ0/a;->b:Lcom/smartdigimkt/h2/c1;

    invoke-virtual {v0}, Lcom/smartdigimkt/h2/c1;->a()V

    return-void
.end method
