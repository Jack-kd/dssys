.class public final synthetic Lh1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:Lh1/o;

.field public final synthetic c:Lh1/m;


# direct methods
.method public synthetic constructor <init>(Lh1/o;Lh1/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lh1/n;->b:Lh1/o;

    iput-object p2, p0, Lh1/n;->c:Lh1/m;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lh1/n;->b:Lh1/o;

    iget-object v1, p0, Lh1/n;->c:Lh1/m;

    invoke-static {v0, v1}, Lh1/o;->a(Lh1/o;Lh1/m;)V

    return-void
.end method
