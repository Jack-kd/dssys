.class public final synthetic Lf1/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lcom/smartdigimkt/w4/t;

.field public final synthetic c:Ljava/lang/Runnable;


# direct methods
.method public synthetic constructor <init>(Lcom/smartdigimkt/w4/t;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lf1/d;->b:Lcom/smartdigimkt/w4/t;

    iput-object p2, p0, Lf1/d;->c:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lf1/d;->b:Lcom/smartdigimkt/w4/t;

    iget-object v1, p0, Lf1/d;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/smartdigimkt/w4/t;->a(Ljava/lang/Runnable;)V

    return-void
.end method
