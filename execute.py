import numpy as np
from example import Example  # .so 파일에서 Example 클래스를 직접 import

model = Example(3.0)  # 인스턴스 생성
X_test = np.array([4, 5, 6], dtype=np.float64)  # 명시적으로 dtype 설정
predictions = model.predict(X_test)  # 예측 결과
print("Predictions:", predictions)  # 예측 결과 출력