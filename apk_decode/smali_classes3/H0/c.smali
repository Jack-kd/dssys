.class public final synthetic LH0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic b:LH0/d;

.field public final synthetic c:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(LH0/d;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, LH0/c;->b:LH0/d;

    iput-object p2, p0, LH0/c;->c:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, LH0/c;->b:LH0/d;

    iget-object v1, p0, LH0/c;->c:Ljava/util/List;

    invoke-static {v0, v1}, LH0/d;->a(LH0/d;Ljava/util/List;)V

    return-void
.end method
