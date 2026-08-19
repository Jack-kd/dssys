.class final Lcom/androidquery/util/AQUtility$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/androidquery/util/AQUtility;->postAsync(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# instance fields
.field final synthetic val$handler:Ljava/lang/Object;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$params:[Ljava/lang/Object;

.field final synthetic val$sig:[Ljava/lang/Class;


# direct methods
.method public constructor <init>(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/androidquery/util/AQUtility$3;->val$handler:Ljava/lang/Object;

    .line 2
    .line 3
    iput-object p2, p0, Lcom/androidquery/util/AQUtility$3;->val$method:Ljava/lang/String;

    .line 4
    .line 5
    iput-object p3, p0, Lcom/androidquery/util/AQUtility$3;->val$sig:[Ljava/lang/Class;

    .line 6
    .line 7
    iput-object p4, p0, Lcom/androidquery/util/AQUtility$3;->val$params:[Ljava/lang/Object;

    .line 8
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/androidquery/util/AQUtility$3;->val$handler:Ljava/lang/Object;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/androidquery/util/AQUtility$3;->val$method:Ljava/lang/String;

    .line 4
    .line 5
    iget-object v4, p0, Lcom/androidquery/util/AQUtility$3;->val$sig:[Ljava/lang/Class;

    .line 6
    .line 7
    iget-object v5, p0, Lcom/androidquery/util/AQUtility$3;->val$params:[Ljava/lang/Object;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    const/4 v3, 0x1

    .line 11
    invoke-static/range {v0 .. v5}, Lcom/androidquery/util/AQUtility;->invokeHandler(Ljava/lang/Object;Ljava/lang/String;ZZ[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    return-void
.end method
