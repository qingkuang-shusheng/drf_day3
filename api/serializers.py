# /user/author/yuandongbo
from rest_framework import serializers
from api.models import Book, Press, User


class PressModelSerializer(serializers.ModelSerializer):
    class Meta:
        model = Press
        fields = ("press_name", "pic", "address")


class BookModelSerializer(serializers.ModelSerializer):
    # 不推荐使用这种自定义的方式
    # aaa = serializers.SerializerMethodField()
    #
    # def get_aaa(self, obj):
    #     return "aaa"

    # TODO 自定义连表查询  查询图书时可以将图书对应的出版社的信息查询出来
    # 在一个序列化器内可以嵌套另外一个序列化器类来完成多表查询
    # 序列化器对应的字段必须是当前模型类中的外键
    publish = PressModelSerializer()

    class Meta:
        # 指定当前序列化器类要序列化的模型
        model = Book

        # 指定我要序列化的字段
        # fields = ("book_name", "price", "pic", "publish")
        fields = ("book_name", "price", "pic", "press_name", "author_list", "publish")

        # 可以直接序列化所有字段
        # fields = "__all__"

        # 指定不展示哪些字段
        # exclude = ("is_delete", "status", "create_time")

        # 指定查询的深度
        # depth = 1


class BookDeModelSerializer(serializers.ModelSerializer):
    """反序列化器"""

    class Meta:
        model = Book
        fields = ("book_name", "price", "pic", "publish", "authors")

        # 添加DRF提供的默认校验规则
        extra_kwargs = {
            "book_name": {
                "required": True,  # 必填字段
                "min_length": 2,  # 最小长度
                "error_messages": {
                    "required": "图书名必须提供",
                    "min_length": "图书名不能少于两个字符",
                }
            },
        }

    def validate(self, attrs):
        print(2, attrs)
        return attrs

    def validate_book_name(self, obj):
        print(1, obj)
        return obj


class BookListSerializer(serializers.ListSerializer):
    # 重写update方法完成更新
    def update(self, instance, validated_data):
        print(instance)  # 要修改的实例
        print(validated_data)  # 要修改的实例的值
        print(self.child)  # 调用逻辑的序列化器类
        # TODO 将修改多个  改变成循环中每次修改一个
        for index, obj in enumerate(instance):
            self.child.update(obj, validated_data[index])

        return instance


class BookModelSerializerV2(serializers.ModelSerializer):
    class Meta:
        model = Book
        fields = ("book_name", "price", "pic", "publish", "authors")

        list_serializer_class = BookListSerializer

        extra_kwargs = {
            "book_name": {
                "required": True,  # 必填字段
                "min_length": 2,  # 最小长度
                "error_messages": {
                    "required": "图书名必须提供",
                    "min_length": "图书名不能少于两个字符",
                }
            },
            "pic": {
                "read_only": True
            },
            "publish": {
                "write_only": True
            },
            "authors": {
                "write_only": True
            },
        }

    def validate(self, attrs):
        print(2, attrs)
        return attrs

    def validate_book_name(self, obj):
        print(1, obj)
        return obj

    def update(self, instance, validated_data):
        book_name = validated_data.get("book_name")
        print(book_name)
        instance.book_name = book_name
        instance.save()
        return instance


class BookModelSerializerV3(serializers.ModelSerializer):
    class Meta:
        model = Book
        fields = ("book_name", "price", "publish", "authors", "pic")

        extra_kwargs = {
            "book_name": {
                "required": True,  # 必填字段
                "min_length": 2,  # 最小长度
                "error_messages": {
                    "required": "图书名必须提供",
                    "min_length": "图书名不能少于两个字符",
                }
            },
            # 指定某个字段只参与序列化
            "pic": {
                "read_only": True
            },
            # 指定某个字段只参与反序列化
            "publish": {
                "write_only": True
            },
            "authors": {
                "write_only": True
            },
        }


class Book_userModelSerializer(serializers.ModelSerializer):
    class Meta:
        model = User
        fields = ("user_name", "password")

    extra_kwargs = {
        "user_name": {
            "required": True,
            "error_messages": {
                "required": "用户名必须提供",
            }
        },
        "password": {
            "required": True,
            "error_messages": {
                "required": "密码必须提供",
            }
        }
    }

    def validate(self, attrs):
        print(attrs)
        return attrs
