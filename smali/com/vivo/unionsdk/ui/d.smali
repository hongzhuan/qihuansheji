.class public Lcom/vivo/unionsdk/ui/d;
.super Lcom/vivo/unionsdk/ui/a;
.source "PermissionAlertActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# instance fields
.field private 藛:Lcom/vivo/unionsdk/ui/g;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Ljava/util/Map;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1, p2}, Lcom/vivo/unionsdk/ui/a;-><init>(Landroid/app/Activity;Ljava/util/Map;)V

    .line 31
    return-void
.end method

.method static synthetic 驶(Lcom/vivo/unionsdk/ui/d;)Lcom/vivo/unionsdk/ui/g;
    .locals 1

    .prologue
    .line 24
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    return-object v0
.end method

.method private static 驶(Ljava/lang/String;)[Ljava/lang/String;
    .locals 3

    .prologue
    .line 111
    const-string v0, "PermissionAlertActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getPermissions, perStr = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/vivo/unionsdk/m;->始(Ljava/lang/String;Ljava/lang/String;)V

    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    const/4 v0, 0x0

    .line 115
    :goto_0
    return-object v0

    :cond_0
    const-string v0, "[*]"

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 0

    .prologue
    .line 98
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/d;->藥()V

    .line 99
    return-void
.end method

.method protected 始()V
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 35
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/d;->藡()Landroid/view/Window;

    move-result-object v0

    const v2, 0x106000d

    invoke-virtual {v0, v2}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 36
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->始:Ljava/util/Map;

    const-string v2, "extra_permissions"

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/vivo/unionsdk/ui/d;->驶(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 37
    array-length v0, v2

    if-gtz v0, :cond_0

    .line 38
    invoke-virtual {p0}, Lcom/vivo/unionsdk/ui/d;->藥()V

    .line 94
    :goto_0
    return-void

    .line 42
    :cond_0
    new-instance v3, Ljava/util/HashSet;

    invoke-direct {v3}, Ljava/util/HashSet;-><init>()V

    .line 43
    array-length v4, v2

    move v0, v1

    :goto_1
    if-ge v0, v4, :cond_8

    aget-object v5, v2, v0

    .line 44
    const-string v6, "android.permission.GET_ACCOUNTS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 45
    const-string v5, "android.permission-group.CONTACTS"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_1
    :goto_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 46
    :cond_2
    const-string v6, "android.permission.READ_PHONE_STATE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 47
    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 48
    :cond_3
    const-string v6, "android.permission.READ_LOGS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 49
    const-string v5, "android.permission-group.PHONE"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 50
    :cond_4
    const-string v6, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 51
    const-string v5, "android.permission-group.STORAGE"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 52
    :cond_5
    const-string v6, "android.permission.READ_EXTERNAL_STORAGE"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6

    .line 53
    const-string v5, "android.permission-group.STORAGE"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 54
    :cond_6
    const-string v6, "android.permission.RECEIVE_SMS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7

    .line 55
    const-string v5, "android.permission-group.SMS"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 56
    :cond_7
    const-string v6, "android.permission.SEND_SMS"

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 57
    const-string v5, "android.permission-group.SMS"

    invoke-virtual {v3, v5}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 61
    :cond_8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 62
    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 63
    :goto_3
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 64
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 65
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v0}, Lcom/vivo/unionsdk/o;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, "\uff0c"

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 67
    :cond_9
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 68
    new-instance v2, Lcom/vivo/unionsdk/ui/g;

    iget-object v3, p0, Lcom/vivo/unionsdk/ui/d;->驶:Landroid/app/Activity;

    invoke-direct {v2, v3}, Lcom/vivo/unionsdk/ui/g;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    .line 69
    iget-object v2, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    const-string v3, "vivo_permission_deny_title"

    invoke-static {v3}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/vivo/unionsdk/ui/g;->驶(Ljava/lang/String;)V

    .line 70
    iget-object v2, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    const-string v3, "vivo_permission_deny_content"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v0, v4, v1

    invoke-static {v3, v4}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/vivo/unionsdk/ui/g;->始(Ljava/lang/String;)V

    .line 71
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/ui/g;->setCanceledOnTouchOutside(Z)V

    .line 72
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/ui/g;->setCancelable(Z)V

    .line 73
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    const-string v1, "vivo_permission_deny_ok"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/unionsdk/ui/e;

    invoke-direct {v2, p0}, Lcom/vivo/unionsdk/ui/e;-><init>(Lcom/vivo/unionsdk/ui/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/ui/g;->驶(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 85
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    const-string v1, "vivo_permission_deny_cancel"

    invoke-static {v1}, Lcom/vivo/unionsdk/s;->驶(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/vivo/unionsdk/ui/f;

    invoke-direct {v2, p0}, Lcom/vivo/unionsdk/ui/f;-><init>(Lcom/vivo/unionsdk/ui/d;)V

    invoke-virtual {v0, v1, v2}, Lcom/vivo/unionsdk/ui/g;->始(Ljava/lang/String;Landroid/view/View$OnClickListener;)V

    .line 92
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0, p0}, Lcom/vivo/unionsdk/ui/g;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 93
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->show()V

    goto/16 :goto_0
.end method

.method protected 藟()V
    .locals 2

    .prologue
    .line 103
    invoke-super {p0}, Lcom/vivo/unionsdk/ui/a;->藟()V

    .line 104
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    if-eqz v0, :cond_0

    .line 105
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/vivo/unionsdk/ui/g;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)V

    .line 106
    iget-object v0, p0, Lcom/vivo/unionsdk/ui/d;->藛:Lcom/vivo/unionsdk/ui/g;

    invoke-virtual {v0}, Lcom/vivo/unionsdk/ui/g;->dismiss()V

    .line 108
    :cond_0
    return-void
.end method
